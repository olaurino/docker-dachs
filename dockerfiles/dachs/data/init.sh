#!/bin/bash

/dachs.sh start
dachs imp //obscore
dachs imp //obs-radio

cd /var/gavo/inputs/data/chandra/data
bash cscdownload.txt
cd ..
dachs imp q

cd /var/gavo/inputs/data/sma/
dachs imp q

tail -f /dev/null

