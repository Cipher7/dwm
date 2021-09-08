#!/usr/bin/bash

wallpaper_path="/home/kali/Wallpapers"
file=$( ls /$wallpaper_path | shuf -n 1 )

hsetroot -center $wallpaper_path/$file
