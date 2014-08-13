#!/bin/sh
[ -e /usr/bin/ansible ] || {
  apt-get -qq update
  apt-get -qq --yes install software-properties-common
  apt-add-repository --yes ppa:ansible/ansible
  apt-get -qq update
  apt-get -qq --yes install ansible
}

