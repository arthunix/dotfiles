#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

sudo apt install build-essential cmake python2 python3 git -y
sudo apt install vim neovim clang-12 libclang-dev zsh curl -y
sudo apt install manpages-dev man-db manpages-posix-dev -y
sudo apt pavucontrol gnome-tweaks gnome-shell-extension-prefs -y
sudo apt install gtk2-engines-murrine gtk2-engines-pixbuf -y

sudo apt install ca-certificates curl gnupg -y

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

sudo snap install code --classic
sudo snap install emacs --classic 

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

git clone --depth 1 https://github.com/vinceliuice/Mojave-gtk-theme ~/.config/mojavetheme
~/.config/mojavetheme/install.sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
