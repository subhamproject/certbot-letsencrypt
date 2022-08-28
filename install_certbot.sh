#!/bin/bash -xe
#Please install python3.7 or later version to get this work
#https://github.com/vinyll/certbot-install/blob/master/install.sh
sudo yum groupinstall -y 'Development Tools'
sudo yum install -y augeas
git clone https://github.com/certbot/certbot.git
cd certbot
pip3 install virtualenv
python3 tools/venv.py
