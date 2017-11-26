#!/usr/bin/env bash

function add-repo() {
  echo " ==> installing ppa:${1}"
  sudo add-apt-repository --remove -y "ppa:$1";
  sudo add-apt-repository -y "ppa:$1";
}

function install_package() {
  echo " ==> installing package:"
  echo " ==> $1 ...."
  sudo apt-get install -y --force-yes $1
}

function clean() {
  sudo apt-get autoremove -y --force-yes
  sudo apt-get autoclean -y --force-yes
  sudo apt-get install -f -y --force-yes
}

function update() {
  sudo apt-get update -y;
}

function upgrade() {
  sudo apt-get upgrade -y --force-yes;
  sudo apt-get dist-upgrade -y --force-yes;
}
