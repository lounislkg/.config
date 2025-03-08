#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/wallpaper/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)
WALLPAPERHDMI=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)
echo $WALLPAPER
# Apply the selected wallpaper

hyprctl hyprpaper reload ,"$WALLPAPERHDMI"
hyprctl hyprpaper reload DP-1,"$WALLPAPER"
