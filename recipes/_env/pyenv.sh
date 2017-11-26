#!/usr/bin/env bash

function run_install(){
  sudo apt-get install -y --force-yes \
       libreadline-dev zlib1g-dev git build-essential \
       checkinstall libreadline-gplv2-dev libncursesw5-dev \
       libssl-dev libsqlite3-dev \
       tk-dev libgdbm-dev libc6-dev libbz2-dev
  git clone https://github.com/pyenv/pyenv.git ~/.pyenv
  mkdir -p ~/.pyenv/plugins
  pushd ~/.pyenv/plugins
  git clone https://github.com/pyenv/pyenv-ccache.git
  git clone https://github.com/pyenv/pyenv-version-ext.git
  popd
}

if [ -d ~/.pyenv ]; then
  echo ' ==> pyenv already installed, skipping.'
else
  echo ' ==> Installing pyenv ...'
  run_install
fi
