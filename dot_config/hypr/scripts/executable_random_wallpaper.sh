#!/bin/bash

# i hate this, but otherwise wallpaper doesn't load
sleep 1 

WALLPAPER_DIR="$HOME/wallpapers"
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper "DP-2,$WALLPAPER" # DP-2 = monitor ('hyperctl monitors')
