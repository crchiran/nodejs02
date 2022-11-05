cd /var/lib/jenkins/workspace/nodejs02_main
npm install
tar czf nodejs02.tar.gz main.js package.json ecosystem.json public LICENSE
sudo scp nodejs02.tar.gz 170.187.228.173:/srv/
rm -f nodejs02.tar.gz

sudo ssh 170.187.228.173 << 'ENDSSH'
cd /srv
pm2 stop all
rm -rf nodejs02
mkdir nodejs02
tar xf nodejs02.tar.gz -C nodejs02
rm -rf nodejs02.tar.gz
cd nodejs02 
npm install
pm2 start all
ENDSSH
