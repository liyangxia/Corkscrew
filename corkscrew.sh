#!/bin/bash

set -e

echo "Welcome to Corkscrew!"
echo
echo "Logined in `cat /etc/os-release | awk -F '"' 'NR==1 {print $2}'`"
echo
echo "--- System info ---"
echo "Kernel Version: `uname -r`"
echo "System Load: `cat /proc/loadavg | awk '{print $1,$2,$3}'`"
echo "System Uptime: `uptime -p`"
echo "Logined Users: `who | wc -l`"
echo "Processes: `ps aux | wc -l`"
echo
