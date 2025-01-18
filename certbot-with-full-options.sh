#!/bin/bash

# Define variables
DOMAIN="example.com"
EMAIL="your-email@example.com"
WEBROOT_PATH="/path/to/your/webroot"
PRE_HOOK="systemctl stop nginx"
POST_HOOK="systemctl start nginx"
RENEW_HOOK="/path/to/renewal-hook.sh"

# Request a certificate using Certbot with all possible options
sudo certbot certonly \
  --non-interactive \
  --agree-tos \
  --email "$EMAIL" \
  --webroot \
  -w "$WEBROOT_PATH" \
  -d "$DOMAIN" \
  -d "www.$DOMAIN" \
  --pre-hook "$PRE_HOOK" \
  --post-hook "$POST_HOOK" \
  --renew-hook "$RENEW_HOOK" \
  --preferred-challenges http \
  --rsa-key-size 2048 \
  --must-staple \
  --expand \
  --redirect \
  --hsts \
  --uir \
  --no-eff-email
