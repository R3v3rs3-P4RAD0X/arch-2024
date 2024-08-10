#!/bin/bash

# This script will be used to alter windows within hyprland.

options=("Toggle Float" "Centre" "Fullscreen")

options_string=$(printf "%s\n" "${options[@]}")

chosen=$(echo -e "${options_string}" | rofi -dmenu -i -p 'Window Options: ' -theme /home/p4rad0x/.config/rofi/themes/one-panel.rasi)

case $chosen in
    "Toggle Float")
        hyprctl dispatch togglefloating
        ;;
    "Centre")
        hyprctl dispatch centerwindow
        ;;
    "Fullscreen")
        hyprctl dispatch fullscreen
        ;;
esac
