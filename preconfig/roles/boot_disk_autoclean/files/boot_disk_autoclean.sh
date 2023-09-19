#!/bin/bash
proc_disk_used=$(df -h |grep /boot |head -1 |awk '{print $5}'|sed 's/%//g')
if [ $proc_disk_used -ge 70 ]; then
  sudo apt-get purge $(dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | head -n -1) --assume-yes
  sudo apt-get autoremove -y
fi
