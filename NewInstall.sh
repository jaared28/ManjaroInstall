#! /usr/bin/bash

echo "\n**********************************"
echo "Beginning new installation process"
echo "**********************************\n"

#Set the fastest mirror

echo "\n**************************"
echo "Finding the fastest mirror"
echo "**************************\n"

sudo pacman-mirrors --fasttrack

#Update the system

echo "\n*******************"
echo "Updating the system"
echo "*******************\n"

yes | sudo pacman -Syu 

#enable TRIM to extend the lifespan of the SSD

echo "\n*************"
echo "Enabling TRIM"
echo "*************\n"

sudo systemctl enable fstrim.timer

