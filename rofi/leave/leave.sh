#!/usr/bin/env bash
# ╔══════════════════════════════════════════════════════════════════════════════╗
# ║                           ROFI LEAVE MENU SCRIPT                            ║
# ║                     Dual Desktop Environment Setup                          ║
# ╠══════════════════════════════════════════════════════════════════════════════╣
# ║ Author: Krzysztof Piekarski                                                 ║
# ║ Project: Hypr_My_Configure                                                  ║
# ║ Theme: Catppuccin Mocha                                                     ║
# ║ Repository: https://github.com/KrzysztofPiekarski/                          ║
# ║ License: MIT                                                                ║
# ║ Version: 2.0                                                               ║
# ╠══════════════════════════════════════════════════════════════════════════════╣
# ║ Description: Power management menu script with:                             ║
# ║ • Lock screen integration (hyprlock)                                       ║
# ║ • System power management                                                  ║
# ║ • Rofi interface with Catppuccin theme                                     ║
# ║ • Seamless integration with Hyprland/EXWM                                 ║
# ╚══════════════════════════════════════════════════════════════════════════════╝

choice=$(printf "Lock\nLogout\nSuspend\nReboot\nShutdown" | rofi -dmenu)
if [[ $choice == "Lock" ]];then
    hyprlock
elif [[ $choice == "Logout" ]];then
    pkill -KILL -u "$USER"
elif [[ $choice == "Suspend" ]];then
    systemctl suspend
elif [[ $choice == "Reboot" ]];then
    systemctl reboot
elif [[ $choice == "Shutdown" ]];then
    systemctl poweroff
fi
