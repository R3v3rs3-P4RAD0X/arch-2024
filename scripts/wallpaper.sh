#!/bin/bash

wallpaper_directory=/home/p4rad0x/Pictures/walls

result=$(find $wallpaper_directory -type f \
   ! -name "*.md" \
   ! -name "*.txt" \
   | rofi -dmenu -p "Pick a wallpaper" -theme ~/.config/rofi/themes/one-panel.rasi)

matugen image $result