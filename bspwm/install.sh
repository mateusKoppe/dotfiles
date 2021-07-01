#!/bin/bash
sudo pacman -S --noconfirm bspwm sxhkd picom polybar xorg-xbacklight rofi xorg-xsetroot brightnessctl nitrogen xorg-xrbd
yay nerd-fonts-fira-code scrot bluez-utils

DIR="$(dirname $(readlink -f $0))"

rm -r ~/.config/bspwm
ln -s ${DIR}/bspwm ~/.config/bspwm
rm -r ~/.config/sxhkd
ln -s ${DIR}/sxhkd ~/.config/sxhkd
rm -r ~/.config/polybar
ln -s ${DIR}/polybar ~/.config/polybar
rm -r ~/.config/rofi
ln -s ${DIR}/rofi ~/.config/rofi

nitrogen --set-scaled ~/.config/bspwm/wallpaper.jpg
