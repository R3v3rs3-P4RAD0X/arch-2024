#!/bin/bash

player_status=$(playerctl status 2> /dev/null)

if [ "$player_status" == "Playing" ]; then
    echo "$(playerctl metadata artist) - $(playerctl metadata title)"

fi

if [ "$player_status" == "Paused" ]; then
    echo ""
fi