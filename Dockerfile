##############################
FROM nytimes/nginx-vod-module

ADD /nginx.conf /usr/local/nginx/conf/nginx.conf

ENTRYPOINT ["/usr/local/nginx/sbin/nginx"]
CMD ["-g", "daemon off;"]
