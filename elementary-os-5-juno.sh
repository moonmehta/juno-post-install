#! /bin/bash

# Fix jittery cursor movement (if you face it)
sudo apt -y install xserver-xorg-input-synaptics

# Remove stuff
sudo apt -y autoremove io.elementary.camera epiphany-browser noise pantheon-calculator pantheon-mail

# Minimal browser installs
sudo apt -y install firefox chromium-browser --no-install-recommends

# Install some apps from Ubuntu repos
sudo apt -y install gnome-disk-utility gnome-software gnome-calculator deepin-picker mpv git ttf-mscorefonts-installer

# Install AppCenter apps
sudo apt -y install com.github.davidmhewitt.torrential com.github.davidmhewitt.clipped com.github.donadigo.appeditor com.github.peteruithoven.resizer

# Enable PPAs
sudo apt -y install software-properties-gtk --no-install-recommends

# Install Elementary tweaks
sudo add-apt-repository -y ppa:philip.scott/elementary-tweaks
sudo apt -y install elementary-tweaks

# Cleanups and upgrades
sudo apt autoremove firefox-locale-* language-pack-* xul-ext-ubufox
sudo apt install firefox-locale-en language-pack-en language-pack-gnome-en
sudo apt -y update && sudo apt upgrade && sudo apt autoremove && sudo apt autoclean

# Install Dark dock theme
git clone https://github.com/dikiaap/frost-plank-theme
cd frost-plank-theme
./install.sh
cd ..
rmdir frost-plank-theme

# Install Flatpak apps
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt install flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
Reboot the system

# Install Snap apps
telegram-desktop
