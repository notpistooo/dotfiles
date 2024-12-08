#!/bin/bash

action=$(echo -e "Cancel\nShutdown\nRestart" | tofi -c ~/.config/tofi/fullscreen)

case $action in
	"Shutdown") poweroff;;
	"Restart") reboot;;
	*) exit;;
esac
