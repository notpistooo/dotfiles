#!/bin/bash

filename=$(ls ~/Pictures/wallpapers/ | tofi -c ~/.config/tofi/dmenu --prompt-text=" wallpapers: ")

if [ $filename != "" ]
then
	ln -sf ~/Pictures/wallpapers/$filename ~/.cache/current
	riverctl spawn "wbg ~/.cache/current"
fi
