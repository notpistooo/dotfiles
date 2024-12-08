#!/bin/bash

case $1 in
	"select") grim -t png -g "$(slurp)" ~/Pictures/screenshots/$(date +"screenshot-%Y-%m-%d-%H-%M-%S.png");;
	*) grim -t png ~/Pictures/screenshots/$(date +"screenshot-%Y-%m-%d-%H-%M-%S.png");;
esac
