#!/bin/bash

# yay
echo "==> Installing yay..."
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay && makepkg -si
cd ~

# packages
echo "==> Installing all packages..."
yay -S --needed - < ~/dotfiles/pkglist.txt

#apple fonts
echo "==> Installing fonts..."
yay -S --needed apple-fonts ttf-apple-emoji ttf-jetbrains-mono-nerd

# configs
echo "==> Copying configs..."
cp -r ~/dotfiles/config/* ~/.config/
cp ~/dotfiles/.zshrc ~/

# zsh terminal
echo "==> Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "==> Done! Reboot or re-login to apply everything."
