#!/bin/bash
echo "PRIVKEY_PEM: $PWD/data/certbot/conf/live/$MYDOMAIN/privkey.pem"
echo "FULLCHAIN_PEM: $PWD/data/certbot/conf/live/$MYDOMAIN/fullchain.pem"

sudo export FULLCHAIN_PEM=$PWD/data/certbot/conf/live/$MYDOMAIN/fullchain.pem
sudo export PRIVKEY_PEM=$PWD/data/certbot/conf/live/$MYDOMAIN/privkey.pem
sudo bash -c "echo 'export MYDOMAIN=$MYDOMAIN' > /etc/profile.d/setdomain_envs.sh"
sudo bash -c "echo 'export FULLCHAIN_PEM=$PWD/data/certbot/conf/live/$MYDOMAIN/fullchain.pem' >> /etc/profile.d/setdomain_envs.sh"
sudo bash -c "echo 'export PRIVKEY_PEM=$PWD/data/certbot/conf/live/$MYDOMAIN/privkey.pem' >> /etc/profile.d/setdomain_envs.sh"
sudo chmod +x /etc/profile.d/setdomain_envs.sh