#!/bin/bash

# yay 설치
./install_yay.sh

# networkmanager 설치
./install_network.sh

# /etc/skel에 dotfiles 옮기기
git clone https://github.com/kuper0201/arch_i3wm
cd arch_i3wm && ./install_iso.sh
