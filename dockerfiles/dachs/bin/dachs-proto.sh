#!/bin/bash -e
/dachs.sh start
cd `dachs config inputsDir`
svn co http://svn.ari.uni-heidelberg.de/svn/gavo/hdinputs/emi
cd emi
mkdir data
cd data
curl -FLANG=ADQL -FFORMAT=votable/td \
  -FQUERY="SELECT TOP 5 access_url FROM emi.main WHERE weighting='uniform'" \
  http://dc.g-vo.org/tap/sync \
| tr '<>' '\n' \
| grep getproduct \
| xargs -n1 curl -sO
dachs imp //obscore
dachs imp //obs-radio
cd ..
dachs imp q

/dachs.sh stop
/dachs.sh start


tail -f /dev/null
