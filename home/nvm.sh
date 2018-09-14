#!/bin/bash
unset NPM_CONFIG_PREFIX
source /usr/share/nvm/init-nvm.sh
nvm run 9.11.2 $*
