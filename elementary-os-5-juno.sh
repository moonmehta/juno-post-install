#! /bin/bash

# Fix jittery cursor movement (if you face it)
sudo apt -y install xserver-xorg-input-synaptics

# Remove stuff
sudo apt -y autoremove io.elementary.camera epiphany-browser noise

# Minimal browser installs
sudo apt -y install firefox chromium-browser --no-install-recommends

# Install some apps from Ubuntu repos
sudo apt -y install gnome-disk-utility gnome-usage deepin-picker mpv git

# Enable PPAs
sudo apt -y install software-properties-gtk --no-install-recommends

# LibreOffice done right
sudo add-apt-repository -y ppa:libreoffice/ppa ppa:philip.scott/elementary-tweaks
sudo apt -y install libreoffice elementary-tweaks ttf-mscorefonts-installer

# Install Elementary tweaks
sudo add-apt-repository -y ppa:philip.scott/elementary-tweaks
sudo apt -y install elementary-tweaks

# Update and Upgrade the packages
sudo apt -y update && sudo apt upgrade && sudo apt autoremove && sudo apt autoclean

# Install Dark dock theme
git clone https://github.com/dikiaap/frost-plank-theme
cd frost-plank-theme
./install.sh
cd ..
rmdir frost-plank-theme
