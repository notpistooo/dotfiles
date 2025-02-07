#!/bin/bash

rm ~/.cache/dnd_mode

dunst &
picom &
slstatus &
lxsession &
fdm --hidden &
thunar --daemon &

vscodium &
telegram-desktop &
discord &
zen-browser &
logseq &

xrandr --output DisplayPort-0 --mode 1920x1080
xrandr --output HDMI-A-0 --mode 1920x1080 --rate 144
xwallpaper --zoom ~/.cache/current_wallpaper

dwm
