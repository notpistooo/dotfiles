#!/bin/bash

action=$(echo -e "Cancel\nShutdown\nRestart\nLock" | dmenu -p "Logout :" -mb)

case $action in
	"Shutdown") sudo poweroff;;
	"Restart") sudo reboot;;
	"Lock") slock;;
	*) ;;
esac
