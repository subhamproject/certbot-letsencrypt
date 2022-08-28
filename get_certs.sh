#!/bin/bash -xe

cd certbot
source venv/bin/activate
certbot certonly -n --agree-tos --dns-route53 \
        -d *.devopsforall.tk --dns-route53-propagation-seconds 60 \
        --email subham.rhce@gmail.com
