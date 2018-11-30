#! /bin/bash

# Fix jittery cursor movement (if you face it)
sudo apt -y install xserver-xorg-input-synaptics

# Remove stuff
sudo apt -y autoremove io.elementary.camera epiphany-browser pantheon-mail noise

# Minimal browser installs
sudo apt -y install firefox chromium-browser --no-install-recommends

# Install some apps from Ubuntu repos
sudo apt -y install gnome-disk-utility gnome-usage deepin-picker mpv git

# Install AppCenter apps
sudo apt -y install com.github.donadigo.eddy com.github.davidmhewitt.torrential com.github.davidmhewitt.clipped com.github.donadigo.appeditor com.github.peteruithoven.resizer

# Enable PPAs
sudo apt -y install software-properties-gtk --no-install-recommends

# LibreOffice done right
sudo add-apt-repository -y ppa:libreoffice/ppa
sudo apt -y install libreoffice ttf-mscorefonts-installer

# Install Elementary tweaks
sudo add-apt-repository -y ppa:philip.scott/elementary-tweaks
sudo apt -y install elementary-tweaks

# Get updated versions of Geary mail client
sudo add-apt-repository ppa:geary-team/releases
sudo apt install geary

# Update and Upgrade the packages
sudo apt -y update && sudo apt upgrade && sudo apt autoremove && sudo apt autoclean

# Install Dark dock theme
git clone https://github.com/dikiaap/frost-plank-theme
cd frost-plank-theme
./install.sh
cd ..
rmdir frost-plank-theme
