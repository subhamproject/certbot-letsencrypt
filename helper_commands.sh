#!/bin/bash

certbot certonly \
-n \
--agree-tos \
--email me@fnando.com \
-d fnando.dev \
-d '*.fnando.dev' \
--dns-route53 \
--preferred-challenges=dns \
--logs-dir /tmp/letsencrypt \
--config-dir ~/local/letsencrypt \
--work-dir /tmp/letsencrypt


certbot certonly \
-d fnando.dev \
-d '*.fnando.dev' \
--dns-route53 \
--preferred-challenges=dns \
--logs-dir /tmp/letsencrypt \
--config-dir ~/local/letsencrypt \
--work-dir /tmp/letsencrypt
