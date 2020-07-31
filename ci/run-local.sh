#!/bin/sh
echo "==============================="
#envsubst "$(env | sed -e 's/=.*//' -e 's/^/\$/g')" < \
#  /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && \
#  nginx
/usr/local/nginx/sbin/nginx -g deamon off;
