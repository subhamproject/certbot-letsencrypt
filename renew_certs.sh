#!/bin/bash -xe

cd /root/certbot
source venv/bin/activate
certbot renew
service nginx restart
