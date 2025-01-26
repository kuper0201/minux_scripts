#!/bin/bash

pacman -Syu --noconfirm linux-headers broadcom-wl networkmanager
systemctl enable NetworkManager
