#!/bin/bash

/dachs.sh start
dachs imp //obscore
dachs imp //obs-radio

cd /var/gavo/inputs/data/chandra/data
bash cscdownload.txt  # Cen A
bash cscdownload.3.txt  # SDSS source in bootes
for f in *.gz
do
  gunzip $f
done
cd ..
python3 make_source_files.py
dachs imp q
dachs publish q

cd /var/gavo/inputs/data/sma/
dachs imp q
dachs publish q

tail -f /dev/null

