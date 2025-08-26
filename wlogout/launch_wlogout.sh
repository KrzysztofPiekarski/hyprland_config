#!/usr/bin/env bash
# ╔══════════════════════════════════════════════════════════════════════════════╗
# ║                           WLOGOUT LAUNCHER SCRIPT                           ║
# ║                     Dual Desktop Environment Setup                          ║
# ╠══════════════════════════════════════════════════════════════════════════════╣
# ║ Author: Krzysztof Piekarski                                                 ║
# ║ Project: Hypr_My_Configure                                                  ║
# ║ Theme: Catppuccin Mocha                                                     ║
# ║ Repository: https://github.com/KrzysztofPiekarski/                          ║
# ║ License: MIT                                                                ║
# ║ Version: 2.0                                                               ║
# ╠══════════════════════════════════════════════════════════════════════════════╣
# ║ Description: Wlogout launcher with custom configuration:                    ║
# ║ • Custom layout and styling                                                ║
# ║ • Catppuccin Mocha theme integration                                       ║
# ║ • Proper button layout and sizing                                          ║
# ║ • Seamless integration with Hyprland/EXWM                                 ║
# ╚══════════════════════════════════════════════════════════════════════════════╝

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Launch wlogout with custom configuration
wlogout \
    --layout "$SCRIPT_DIR/layout" \
    --css "$SCRIPT_DIR/style.css" \
    --buttons-per-row 3 \
    --column-spacing 80 \
    --row-spacing 80 \
    --margin-top 150 \
    --margin-bottom 150 \
    --margin-left 200 \
    --margin-right 200 \
    --protocol layer-shell
