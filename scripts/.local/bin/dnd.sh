#!/bin/bash


dnd_file="$HOME/.cache/dnd_mode"

# dnd toggle
if [ -f $dnd_file ]
then
	rm $dnd_file
	dunstctl set-paused false
	paplay ~/.config/dunst/on.mp3
else
	touch $dnd_file
	dunstctl set-paused true
	paplay ~/.config/dunst/off.mp3
fi
