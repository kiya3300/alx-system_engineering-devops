#!/usr/bin/env bash
# Command to make an nginx server listen on port 80
apt-get -y update
apt-get -y install nginx
ufw allow 'Nginx HTTP'
sed -i 's/8080/80/g' /etc/nginx/sites-enabled/default
service nginx start
