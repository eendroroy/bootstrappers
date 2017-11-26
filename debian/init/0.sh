#!/usr/bin/env bash

echo ' ==> Install ubuntu mail archive ...'
sudo sed -i "s|bd.||g" /etc/apt/sources.list

echo ' ==> adding i386 architecture'
sudo dpkg --add-architecture i386

# init update
sudo apt-get update -y
sudo apt-get upgrade -y --force-yes
sudo apt-get dist-upgrade -y --force-yes
sudo apt-get install -f -y --force-yes
sudo apt-get autoremove -y --force-yes
sudo apt-get autoclean -y --force-yes
