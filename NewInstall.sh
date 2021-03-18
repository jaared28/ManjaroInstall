#! /usr/bin/bash

echo "**********************************"
echo "Beginning new installation process"
echo "**********************************"

#Set the fastest mirror

echo "**************************"
echo "Finding the fastest mirror"
echo "**************************"

sudo pacman-mirrors --fasttrack

#Update the system

echo "*******************"
echo "Updating the system"
echo "*******************"

yes | sudo pacman -Syu 

#enable TRIM to extend the lifespan of the SSD

echo "*************"
echo "Enabling TRIM"
echo "*************"

sudo systemctl enable fstrim.timer

#Download the latest linux kernel

echo "**********************"
echo "Downloading new kernel"
echo "**********************"

yes | sudo mhwd-kernel -i linux510

#Install missing base-devel group packages

echo "************************************"
echo "Installing base-devel group packages"
echo "************************************"

printf '\n y' | sudo pacman -S base-devel

#Install Yay AUR helper
#Make a package manager folder and install Yay in it

echo "***************"
echo "Intstalling Yay"
echo "***************"

mkdir PackageManagers
cd PackageManagers
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si