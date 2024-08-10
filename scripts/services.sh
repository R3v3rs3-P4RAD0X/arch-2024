#!/bin/bash

# This script will launch the web uis for the services
services=( "Portainer" "Jackett" "Jellyfin" "Jellyseerr" "Radarr" "Sonarr" "Nginx Proxy Manager" "Homarr" "qBitTorrent" "Transmission" )

# Combine the services into a single string using \n as a delimiter
services_string=$(printf "%s\n" "${services[@]}")

# Pass the options to rofi
selected_service=$(echo -e "$services_string" | rofi -dmenu -p "Select A Service To Open" -theme ~/.config/rofi/themes/one-panel.rasi)

# Launch the selected service
case $selected_service in
    "Portainer")
        brave portainer.local
        ;;
    "Jackett")
        brave jackett.local
        ;;
    "Jellyfin")
        brave jellyfin.local
        ;;
    "Jellyseerr")
        brave jellyseerr.local
        ;;
    "Radarr")
        brave radarr.local
        ;;
    "Sonarr")
        brave sonarr.local
        ;;
    "Nginx Proxy Manager")
        brave 10.1.0.100:81
        ;;
    "Homarr")
        brave homarr.local
        ;;
    "qBitTorrent")
        brave qbittorrent.local
        ;;
    "Transmission")
        brave transmission.local
        ;;
    *)
        echo "Invalid service selected"
        ;;
esac
