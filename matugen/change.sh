#!/bin/bash

matugen image $1

sleep 1;

/home/p4rad0x/.config/waybar/launch.sh
hyprctl reload
