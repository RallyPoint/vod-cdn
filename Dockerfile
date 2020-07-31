##############################
FROM nytimes/nginx-vod-module

ADD /nginx.conf /usr/local/nginx/conf/nginx.conf

RUN mkdir -p /tmp/cache/nginx/live_cache_temp
RUN mkdir -p /var/log/nginx

RUN mkdir -p /var/www/certbot
RUN mkdir -p /etc/letsencrypt/live
ADD /init-letsencrypt.sh /etc/letsencrypt/init-letsencrypt.sh
RUN chmod +x /etc/letsencrypt/init-letsencrypt.sh

ADD /ci/run-prod.sh /root/run-prod.sh
RUN chmod +x /root/run-prod.sh

ENTRYPOINT ["/bin/sh"]
CMD ["/root/run-prod.sh"]
