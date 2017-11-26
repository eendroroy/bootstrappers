#!/usr/bin/env bash

function run_install() {
  git clone https://github.com/syndbg/goenv.git ~/.goenv
}

if [ -d ~/.exenv ]; then
  echo ' ==> goenv already installed, skipping.'
else
  echo ' ==> Installing goenv ...'
  run_install > /dev/null
fi
