#!/bin/bash

sudo dnf check-update -y
sudo dnf update --refresh -y
 
#install basic tools
sudo dnf install python2 python3 chromium pavucontrol code git vim python3-neovim neovim emacs neofetch zsh -y
sudo dnf install llvm clang clang-devel clang-libs perl perl-devel gdb rust rustc cmake util-linux-user sysstat -y
sudo dnf install qemu-system-x86 qemu-system-arm kernel-devel kernel-headers kernel-doc kernel-tools flatpak -y
sudo dnf install kernel-tools-libs kernel-tools-libs-devel kernel-core kernel-modules ncurses-devel kmod kmod-devel -y
sudo dnf install libbpf-devel glibc-devel elfutils-libelf-devel elfutils-libelf flex flex-devel bison bison-devel -y
sudo dnf group install "C Development Tools and Libraries" "Development Tools" -y
sudo dnf install lame lame-devel gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav -y
sudo dnf group install "Multimedia" -y
#sudo dnf group install "Security Lab" -y

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install
~/.emacs.d/bin/doom sync

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine
                  
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker
sudo groupadd docker
sudo usermod -aG docker $USER

sudo systemctl enable docker.service
sudo systemctl enable containerd.service
