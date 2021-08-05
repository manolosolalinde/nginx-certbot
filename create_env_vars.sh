#!/bin/bash
#run as root
echo "PRIVKEY_PEM: $PWD/data/certbot/conf/live/$MYDOMAIN/privkey.pem"
echo "FULLCHAIN_PEM: $PWD/data/certbot/conf/live/$MYDOMAIN/fullchain.pem"

export FULLCHAIN_PEM=$PWD/data/certbot/conf/live/$MYDOMAIN/fullchain.pem
export PRIVKEY_PEM=$PWD/data/certbot/conf/live/$MYDOMAIN/privkey.pem
bash -c "echo 'export MYDOMAIN=$MYDOMAIN' > /etc/profile.d/setdomain_envs.sh"
bash -c "echo 'export FULLCHAIN_PEM=$PWD/data/certbot/conf/live/$MYDOMAIN/fullchain.pem' >> /etc/profile.d/setdomain_envs.sh"
bash -c "echo 'export PRIVKEY_PEM=$PWD/data/certbot/conf/live/$MYDOMAIN/privkey.pem' >> /etc/profile.d/setdomain_envs.sh"
chmod +x /etc/profile.d/setdomain_envs.sh