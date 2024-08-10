#!/bin/bash

# This script will use rofi to handle power options

# Options
options="󰐥 Shutdown\n Reboot\n󰈆 Logout\n󰑓 Reload"

# Get the user selection
selected=$(echo -e $options | rofi -dmenu -i -p "Power Options" -theme ~/.config/rofi/themes/one-panel.rasi)

# Handle the selection
case $selected in
    Shutdown)
        sudo systemctl poweroff
        ;;
    Reboot)
        hyprctl dispatch -- reboot
        ;;
    Logout)
        hyprctl dispatch -- exit
        ;;
    Reload)
        hyprctl dispatch -- reload
        ;;
esac