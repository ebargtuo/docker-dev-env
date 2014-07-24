#!/bin/bash
set -e
apt-get -qq update
apt-get -qq --yes install python
touch /root/.ansible_bootstrapped