#!/bin/bash

filename="$(date +"%Y-%m-%d-%H-%M-%S").png"

case $1 in
	"select") scrot --file ~/Pictures/Screenshots/$filename --select;;
	"window") scrot --file ~/Pictures/Screenshots/$filename --focused;;
	*) scrot --file ~/Pictures/Screenshots/$filename;;
esac

if [ -f ~/Pictures/Screenshots/$filename ]
then
	notify-send --icon=$HOME/Pictures/Screenshots/$filename "Screenshot Taken." "$filename"
fi
