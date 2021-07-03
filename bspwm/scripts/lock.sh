#!/bin/bash

nitrogen_wallpaper=$(cat ~/.config/nitrogen/bg-saved.cfg | grep file | sed -e 's/^file=//g')
convert $nitrogen_wallpaper RGB:-| i3lock --raw 1920x1080:rgb -i /dev/stdin