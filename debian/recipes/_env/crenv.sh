#!/usr/bin/env bash

function run_install() {
  git clone git@github.com:pine/crenv.git ~/.crenv
  pushd ~/.crenv
  pushd src/configure && make -C src && popd
  popd
  mkdir -p ~/.crenv/plugins
  pushd ~/.crenv/plugins
  git clone git@github.com:pine/crystal-build.git
  git clone git@github.com:crenv/crenv-update.git
  popd
}

if [ -d ~/.crenv ]; then
  echo ' ==> crenv already installed, skipping.'
else
  echo ' ==> Installing crenv ...'
  run_install > /dev/null
fi
