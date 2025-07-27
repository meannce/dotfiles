#!/bin/bash

WALLPAPER_DIR="$HOME/wallpapers"
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
MONITOR=$(hyprctl monitors | grep -m1 "Monitor" | awk '{print $2}')

until hyprctl hyprpaper listloaded &>/dev/null; do
	sleep 0.1
done

hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper "$MONITOR,$WALLPAPER"
