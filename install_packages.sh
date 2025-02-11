#!/bin/bash

pacman -Syu --needed --noconfirm linux-lts-headers broadcom-wl-dkms networkmanager git base-devel pulseaudio touchegg tlp nano
pacman -Syu --needed --noconfirm fcitx5 fcitx5-im fcitx5-hangul fcitx5-configtool fcitx5-qt fcitx5-gtk
pacman -Syu --needed --noconfirm jq network-manager-applet i3-gaps xorg-server xorg-xinit pcmanfm-gtk3 lxappearance alacritty xdotool kvantum kvantum-theme-materia materia-gtk-theme kvantum-qt5 qt5ct qt6ct libnotify
pacman -Syu --needed --noconfirm lightdm lightdm-gtk-greeter

systemctl enable NetworkManager
systemctl enable lightdm
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
