#!/bin/bash

filename=$(ls ~/Pictures/Wallpapers/ | dmenu -p "Wallpaper :")

if [ $filename != "" ]
then
	ln -sf ~/Pictures/Wallpapers/$filename ~/.cache/current_wallpaper
	xwallpaper --zoom ~/.cache/current_wallpaper
fi
