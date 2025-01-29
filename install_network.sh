#!/bin/bash

pacman -Syu --noconfirm linux-zen-headers broadcom-wl networkmanager
systemctl enable NetworkManager
