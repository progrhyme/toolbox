#!/usr/bin/env bash

set -euo pipefail

pkgs=(hubot coffee-script yo generator-hubot)

npm install -g ${pkgs[*]}

exit
