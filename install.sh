#!/bin/sh
if ! [ -f ~/wallpaper.png ]; then
	curl https://safebooru.org//images/4075/c31d1992d3c021350792140ec3f94726466a0412.jpg -o ~/wallpaper.jpg
fi

if [ "$1" = "programs" ]; then
        sudo pacman -S ttf-ubuntu-font-family xorg-xrandr openbox sxhkd feh picom ttf-hack kitty rofi nemo lxpanel lxappearance lxappearance-obconf obconf flameshot breeze-gtk slock ublock-origin chromium keepassxc notepadqq pavucontrol pulseaudio
	sudo apt install fonts-ubuntu x11-xserver-utils openbox sxhkd feh picom fonts-hack kitty rofi nemo notepadqq lxpanel lxappearance lxappearance-obconf obconf-qt flameshot breeze-gtk-theme slock webext-ublock-origin-chromium chromium keepassxc pavucontrol pulseaudio
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
