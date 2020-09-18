#!/bin/bash

cd /data/dis || exit
pwd
/usr/bin/forever start --uid "dis" --append ./bin/www
