#!/usr/bin/env bash

# Credit to "TechHelpList" for this code
# http://techhelplist.com/index.php/tech-tutorials/43-linux-adventures/85-upstart-ruby-job-with-rvm

if [[ -s "/usr/local/rvm/environments/default" ]] ; then
  source "/opt/sleep-on-lan/env.settings"
  exec ruby "$@"
else
  echo "ERROR: Missing RVM environment file: 'default'" >&2
  exit 1
fi
