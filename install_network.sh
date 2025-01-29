#!/bin/bash

pacman -Syu --noconfirm linux-zen-headers networkmanager
systemctl enable NetworkManager
