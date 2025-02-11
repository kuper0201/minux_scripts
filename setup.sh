#!/bin/bash

# package 설치
./install_packages.sh

# yay 설치
./install_yay.sh

# /etc/skel에 dotfiles 옮기기
git clone https://github.com/kuper0201/arch_i3wm

cd arch_i3wm
./install_iso.sh

cd ..
./update_user.sh
