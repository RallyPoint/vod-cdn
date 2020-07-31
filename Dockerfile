##############################
FROM nytimes/nginx-vod-module

ADD /nginx.conf /usr/local/nginx/conf/nginx.conf

RUN mkdir -p /tmp/cache/nginx/live_cache_temp
RUN mkdir -p /var/log/nginx

ENTRYPOINT ["/usr/local/nginx/sbin/nginx"]
CMD ["-g", "daemon off;"]
