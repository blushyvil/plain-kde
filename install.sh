#!/bin/bash

# AUR helper (install yay first)
# pacman -S --needed git base-devel
# git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# Fonts
yay -S apple-fonts ttf-apple-emoji ttf-jetbrains-mono-nerd

# All packages
yay -S - < pkglist.txt
