#!/bin/bash
sleep 1

WALLPAPER_DIR="$HOME/wallpapers"
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
#MONITOR=$(hyprctl monitors | grep -m1 "Monitor" | awk '{print $2}')

hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper "DP-2,$WALLPAPER"
