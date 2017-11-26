#!/usr/bin/env bash

declare -a packagesDefault=(\
  python-software-properties software-properties-common apt-transport-https ca-certificates
  gparted samba git ubuntu-restricted-addons ubuntu-restricted-extras \
)

declare -a ppas=(\
  "snwh/pulp" \
  "noobslab/apps" \
  "nomacs/daily" \
  "synapse-core/testing" \
  "webupd8team/tor-browser" \
  "ubuntu-mozilla-security/ppa" \
  "stefansundin/truecrypt" \
  "nilarimogard/webupd8" \
  "fixnix/netspeed" \
  "gezakovacs/ppa" \
  "videolan/master-daily" \
  "mercurial-ppa/releases" \
  "git-core/ppa" \
)

declare -a packages=(\
  paper-gtk-theme paper-cursor-theme paper-icon-theme \
  indicator-synapse nomacs synapse firefox truecrypt \
  dmsetup indicator-netspeed-unity unetbootin vlc \
)

declare -a loki_ppas=(/
  "philip.scott/elementary-tweaks" \
)

declare -a loki_packages=(\
  elementary-tweaks \
)
