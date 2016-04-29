#!/bin/sh

# <bitbar.title>Smb Connection</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>sharkattack51</bitbar.author>
# <bitbar.author.github>sharkattack51</bitbar.author.github>
# <bitbar.desc>smb connection shortcut</bitbar.desc>

if [ "$1" = "FS00" ]; then
  open smb://fs00
  exit
fi

if [ "$1" = "TLT-3625" ]; then
  open smb://tlt-3625
  exit
fi

echo "⚡"
echo "---"
echo "smb://FS00 | bash=$0 param1='FS00' terminal=false refresh=true"
echo "smb://TLT-3625 | bash=$0 param1='TLT-3625' terminal=false refresh=true"