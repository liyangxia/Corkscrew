#!/bin/bash

set -e

echo "Welcome to Corkscrew!"
echo "Get new release at: https://github.com/liyangxia/corkscrew"
echo
echo "Logined in $HOSTNAME"
echo
echo "--- System info ---"
echo "Kernel Version: `uname -r`"
echo "System Load: `cat /proc/loadavg | awk '{print $1,$2,$3}'`"
echo "System Uptime: `uptime -p`"
echo "Logined Users: `who | wc -l`"
echo "Processes: `ps aux | wc -l`"
echo
