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

