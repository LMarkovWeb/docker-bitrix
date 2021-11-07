FROM nginx
WORKDIR "/var/www"

ARG user_uid
ARG user_gid
RUN usermod -u $user_uid nginx
RUN groupmod -g $user_gid nginx

RUN  rm -rf /etc/nginx/conf.d/*
COPY ./site.conf         /etc/nginx/conf.d/site.conf

RUN mkdir -p /var/www;
