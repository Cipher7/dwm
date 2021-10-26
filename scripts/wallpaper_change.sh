#!/usr/bin/bash

wallpaper_path="/home/cipher/suckless-software/dwm/Wallpapers"
file=$( ls $wallpaper_path | shuf -n 1 )

hsetroot -cover $wallpaper_path/$file
