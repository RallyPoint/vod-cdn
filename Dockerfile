##############################
FROM nytimes/nginx-vod-module

ADD /nginx.conf /usr/local/nginx/conf/nginx.conf

RUN mkdir -p /tmp/cache/nginx/live_cache_temp
RUN mkdir -p /var/log/nginx
RUN mkdir -p /usr/local/nginx/ssl



ADD /ci/run-prod.sh /root/run-prod.sh
RUN chmod +x /root/run-prod.sh

ENTRYPOINT ["/bin/sh"]
CMD ["/root/run-prod.sh"]
