#! /bin/bash

# Fix jittery cursor movement (if you face it)
sudo apt -y install xserver-xorg-input-synaptics

# Remove stuff
sudo apt -y autoremove io.elementary.camera epiphany-browser noise pantheon-calculator pantheon-mail

# Minimal browser installs
sudo apt -y install firefox chromium-browser --no-install-recommends

# Get some apps from Ubuntu repos
sudo apt -y install gnome-disk-utility gnome-software gnome-calculator deepin-picker mpv git ttf-mscorefonts-installer

# Get AppCenter apps
sudo apt -y install com.github.davidmhewitt.torrential com.github.davidmhewitt.clipped com.github.donadigo.appeditor com.github.peteruithoven.resizer

# Enable PPAs
sudo apt -y install software-properties-gtk --no-install-recommends

# Get elementary tweaks and Geary
sudo add-apt-repository -y ppa:philip.scott/elementary-tweaks
sudo add-apt-repository ppa:geary-team/releases
sudo apt -y install elementary-tweaks geary

# Get Dark dock theme
git clone https://github.com/dikiaap/frost-plank-theme
cd frost-plank-theme
./install.sh
cd ..
rmdir frost-plank-theme

# Get Flatpak apps
sudo add-apt-repository -y ppa:alexlarsson/flatpak
sudo apt install flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
Reboot the system

# Get Snap apps
sudo snap -y install telegram-desktop

# Install latest kernel+graphics
sudo apt -y install --install-recommends linux-generic-hwe-18.04 xserver-xorg-hwe-18.04

# Cleanups and upgrades
sudo apt autoremove firefox-locale-* language-pack-* xul-ext-ubufox
sudo apt install firefox-locale-en language-pack-en language-pack-gnome-en
sudo apt -y update && sudo apt upgrade && sudo apt autoremove && sudo apt autoclean
