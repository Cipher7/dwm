#!/usr/bin/bash

wallpaper_path="/usr/src/dwm/Wallpapers"
file=$( ls $wallpaper_path | shuf -n 1 )

hsetroot -cover $wallpaper_path/$file
