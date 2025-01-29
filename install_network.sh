#!/bin/bash

pacman -Syu --noconfirm linux-zen-headers networkmanager
yay -Syu --noconfirm broadcom-wl-dkms
systemctl enable NetworkManager
