#!/bin/bash

# ╭─────────────────────────────────────────────────────────────────────────────╮
# │                              WAYBAR WEATHER                                │
# │                                                                             │
# │  Author: Krzysztof Piekarski                                               │
# │  GitHub: https://github.com/KrzysztofPiekarski/Hypr_My_Cofigure           │
# │  Description: Reliable weather widget with fallback and error handling     │
# │  Version: 2.1                                                              │
# ╰─────────────────────────────────────────────────────────────────────────────╯

LOCATION="${1:-Tarnobrzeg}"
CACHE_FILE="/tmp/waybar_weather_cache"
CACHE_DURATION=1800  # 30 minutes in seconds

# Function to get weather from API
get_weather() {
    local location="$1"
    local weather
    
    # Add random delay to avoid rate limiting
    sleep $((RANDOM % 3 + 1))
    
    # Try primary location with user agent to avoid blocking
    weather=$(curl -s --connect-timeout 5 --max-time 10 \
        -H "User-Agent: Waybar-Weather/1.0" \
        "https://wttr.in/${location}?format=%t&m" 2>/dev/null | head -c -1)
    
    # Check for rate limit message
    if [[ "$weather" == *"already being processed"* || "$weather" == *"query is already"* ]]; then
        weather=""
    fi
    
    # If primary fails, try v1.wttr.in (alternative endpoint)
    if [[ -z "$weather" || "$weather" == *"Unknown"* ]]; then
        sleep 2
        weather=$(curl -s --connect-timeout 5 --max-time 10 \
            -H "User-Agent: Waybar-Weather/1.0" \
            "https://v1.wttr.in/${location}?format=%t&m" 2>/dev/null | head -c -1)
    fi
    
    # Final fallback to global location
    if [[ -z "$weather" || "$weather" == *"Unknown"* || "$weather" == *"already being processed"* ]]; then
        sleep 2
        weather=$(curl -s --connect-timeout 5 --max-time 10 \
            -H "User-Agent: Waybar-Weather/1.0" \
            "https://wttr.in/?format=%t&m" 2>/dev/null | head -c -1)
    fi
    
    # Clean the result
    weather=$(echo "$weather" | tr -d '\n' | sed 's/%$//' | sed 's/°C/°/')
    
    echo "$weather"
}

# Function to check if cache is valid
is_cache_valid() {
    if [[ -f "$CACHE_FILE" ]]; then
        local cache_time=$(stat -c %Y "$CACHE_FILE" 2>/dev/null || echo 0)
        local current_time=$(date +%s)
        local age=$((current_time - cache_time))
        
        if [[ $age -lt $CACHE_DURATION ]]; then
            return 0
        fi
    fi
    return 1
}

# Main logic
if is_cache_valid; then
    # Use cached weather
    cat "$CACHE_FILE" 2>/dev/null || echo "N/A"
else
    # Get fresh weather
    weather=$(get_weather "$LOCATION")
    
    if [[ -n "$weather" && "$weather" != "N/A" && ! "$weather" =~ Unknown ]]; then
        # Valid weather, cache it
        echo "$weather" > "$CACHE_FILE"
        echo "$weather"
    elif [[ -f "$CACHE_FILE" ]]; then
        # Use old cache if available
        cat "$CACHE_FILE"
    else
        # No weather available
        echo "N/A"
    fi
fi
