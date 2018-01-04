#!/usr/bin/env sh

RECIPE=${RECIPE:-'fakenews-gambling'}

wget --quiet https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/$RECIPE/hosts
cat hosts | grep '^0\.0\.0\.0' | awk '{print "local-zone: \""$2"\" redirect\nlocal-data: \""$2" A 0.0.0.0\""}' > output.conf
cat output.conf