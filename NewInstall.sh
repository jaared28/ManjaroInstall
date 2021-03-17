#! /usr/bin/bash

echo "Beginning new installation process"

#Set the fastest mirror

echo "Finding the fastest mirror"
sudo pacman-mirrors --fasttrack

echo "--------------------------"
echo "Updating the system"

sudo pacman -Syu 