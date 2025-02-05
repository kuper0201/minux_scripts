#!/bin/bash

pacman -Syu --noconfirm linux-lts-headers broadcom-wl-dkms networkmanager pulseaudio touchegg tlp git nano
systemctl enable touchegg
systemctl enable tlp

# Tap to Click
echo -e "Section \"InputClass\"
    Identifier \"libinput touchpad catchall\"
    MatchIsTouchpad \"on\"
    Option \"Tapping\" \"on\"
    Option \"TappingDragLock\" \"on\"
EndSection" > /etc/X11/xorg.conf.d/40-libinput.conf

# check install_yay.sh
# yay -Syu --noconfirm broadcom-wl-dkms
systemctl enable NetworkManager
