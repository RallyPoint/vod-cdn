#!/bin/sh
echo "==============================="
/etc/letsencrypt/init-letsencrypt.sh
/usr/local/nginx/sbin/nginx
