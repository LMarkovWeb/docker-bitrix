FROM php:7.2-fpm

ARG user_uid
ARG user_gid
RUN usermod -u $user_uid www-data
RUN groupmod -g $user_gid www-data

ARG SMTP_MAILHUB
ARG SMTP_USER
ARG SMTP_PASS
ARG SMTP_PORT
ARG SMTP_FROM

RUN apt-get update -q -y \
    && apt-get install -q -y --no-install-recommends \
    unzip \
    git \
    libxml2-dev \
    zlib1g-dev \
    libzip-dev \
    libwebp-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libxpm-dev \
    libfreetype6-dev

RUN docker-php-ext-configure gd --with-freetype-dir --with-jpeg-dir && docker-php-ext-install gd && docker-php-ext-install soap

RUN docker-php-ext-install pdo_mysql mysqli zip

RUN docker-php-ext-install opcache
RUN docker-php-ext-install sockets

WORKDIR "/var/www"

RUN apt-get update -q -y && apt-get install -q -y --no-install-recommends  msmtp

# RUN echo "defaults" > /etc/msmtprc \
#     && echo "account default" >> /etc/msmtprc \
#     && echo "logfile /var/www/msmtp.log" >> /etc/msmtprc \
#     && echo "host $SMTP_MAILHUB" >> /etc/msmtprc \
#     && echo "port $SMTP_PORT" >> /etc/msmtprc \
#     && echo "from $SMTP_FROM" >> /etc/msmtprc \
#     && echo "auth on" >> /etc/msmtprc \
#     && echo "tls on" >> /etc/msmtprc \
#     && echo "tls_starttls off" >> /etc/msmtprc \
#     && echo "tls_certcheck off" >> /etc/msmtprc \
#     && echo "user $SMTP_USER" >> /etc/msmtprc \
#     && echo "password $SMTP_PASS" >> /etc/msmtprc

RUN apt-get update -q -y && apt-get install -q -y mc telnet

COPY php-overides_local.ini $PHP_INI_DIR/conf.d/php-overides.ini

USER www-data
