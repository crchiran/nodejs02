#!/bin/bash

tar czf nodejs02.tar.gz main.js package.json public LICENSE
scp nodejs02.tar.gz root@170.187.228.173:/srv/
rm nodejs02.tar.gz

ssh 170.187.228.173 << 'ENDSSH'
cd /srv
pm2 stop all
rm -rf nodejs02
mkdir nodejs02
tar xf nodejs02.tar.gz -C easyio
rm nodejs02.tar.gz
cd easyio 
npm i
pm2 start all
ENDSSH
