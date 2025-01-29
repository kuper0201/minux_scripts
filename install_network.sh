#!/bin/bash

pacman -Syu --noconfirm linux-zen-headers networkmanager touchegg
# check install_yay.sh
# yay -Syu --noconfirm broadcom-wl-dkms
systemctl enable NetworkManager
