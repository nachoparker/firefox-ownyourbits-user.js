#!/bin/bash

diff \
  user.js\
  <(wget -q https://raw.githubusercontent.com/ghacksuserjs/ghacks-user.js/master/user.js -o/dev/null -O-)\
  | grep "^<[[:space:]]*user_pref" | sed 's|^<[[:space:]]*||'\
  > user-overrides.js
