#!/usr/bin/env bash

SCRIPT_ROOT=${0:A:h}

INIT_PATH="${SCRIPT_ROOT}/init"
for file in `\ls "${INIT_PATH}"`; do
  source "${INIT_PATH}/${file}"
done

HELPER_PATH="${SCRIPT_ROOT}/helpers"
for file in `\ls "${HELPER_PATH}"`; do
  source "${HELPER_PATH}/${file}"
done

# install packages available in default archive
for i in "${packagesDefault[@]}"; do install-package $i; done

# install packages from 3rd party archives
for i in "${ppas[@]}"; do add-repo $i; done
update
for i in "${packages[@]}"; do install-package $i; done

# install packages from 3rd party loki archives
if [[ `lsb_release -cs` = "loki" ]]; then
  for i in "${loki_ppas[@]}"; do add-repo $i; done
  update
  for i in "${loki_packages[@]}"; do install-package $i; done
fi

# execute custom installation scripts
RECIPES_PATH="${SCRIPT_ROOT}/recipes"
source "${RECIPES_PATH}/_env/crenv.sh"
source "${RECIPES_PATH}/_env/exenv.sh"
source "${RECIPES_PATH}/_env/goenv.sh"
source "${RECIPES_PATH}/_env/nodenv.sh"
source "${RECIPES_PATH}/_env/pyenv.sh"
source "${RECIPES_PATH}/_env/rbenv.sh"

# update, upgrade, clean
update
upgrade
clean

echo 
echo "###############################################"
echo "# to install nvidia drivers execute:          #"
echo "# $ bash customs/nvidia.sh                    #"
echo "###############################################"
echo
