#!/bin/sh

loadkeys la-latin

pacman -S base base-devel linux-headers intel-ucode pipewire wireplumber pipewire-alsa pipewire-pulse networkmanager tlp tlp-rdw reflector

# TLP
systemctl enable tlp.service
systemctl enable NetworkManager-dispatcher.service
systemctl mask systemd-rfkill.service systemd-rfkill.socket
