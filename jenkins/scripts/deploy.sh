#!/bin/sh
ssh louismylle@192.168.1.183 <<EOF
 cd /home/louismylle/digitaalmenu/site/
 git pull
 npm install — production
 npm run build
 exit
EOF
