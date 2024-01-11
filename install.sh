#!/bin/sh
if ! [ -f ~/wallpaper.png ]; then
	curl https://img3.gelbooru.com/images/3a/f5/3af5d5c6058ccbfdd8759084c596ab37.png -o ~/wallpaper.png
fi

if [ "$1" = "programs" ]; then
	sudo pacman -S ttf-ubuntu-font-family xorg-xrandr openbox sxhkd feh picom ttf-hack kitty rofi pcmanfm leafpad lxpanel lxappearance lxappearance-obconf obconf flameshot mate-themes slock
fi

mkdir -p ~/.config/openbox
mkdir -p ~/.config/sxhkd
mkdir -p ~/.config/picom
mkdir -p ~/.config/lxpanel
mkdir -p ~/.config/rofi
cp autostart ~/.config/openbox/autostart
cp rc.xml ~/.config/openbox/rc.xml
cp sxhkdrc ~/.config/sxhkd/sxhkdrc
cp picom.conf ~/.config/picom/picom.conf
cp -r lxpanel ~/.config
cp config.rasi ~/.config/rofi/config.rasi 
