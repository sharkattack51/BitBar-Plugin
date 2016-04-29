#!/bin/sh

# <bitbar.title>Syncthing Controll</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>sharkattack51</bitbar.author>
# <bitbar.author.github>sharkattack51</bitbar.author.github>
# <bitbar.desc>Syncthing(https://syncthing.net) tiny controller</bitbar.desc>

if [ "$1" = "start" ]; then
  /Applications/syncthing-macosx-amd64-v0.12.22/syncthing
  exit
fi

if [ "$1" = "stop" ]; then
  PID=$(ps alx | grep '/Applications/syncthing' | grep -v grep | awk '{print $2}')
  kill $PID
  exit
fi

if [ "$1" = "open" ]; then
  open /Users/kasai/Sync/ 
  exit
fi

if [ "$1" = "setting" ]; then
  open http://127.0.0.1:8384
  exit
fi

echo "Sync"
echo "---"
PID=$(ps alx | grep '/Applications/syncthing' | grep -v grep | awk '{print $2}')
if [ "$PID" = "" ]; then
  echo "Start Syncthing | bash=$0 param1='start' terminal=false refresh=true"
else
  echo "Stop Syncthing | bash=$0 param1='stop' terminal=false refresh=true"
fi
echo "Open sync dir | bash=$0 param1='open' terminal=false refresh=true"
echo "Setting http://127.0.0.1:8384 | bash=$0 param1='setting' terminal=false refresh=true"