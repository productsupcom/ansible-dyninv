FROM php:7.1.5-fpm

RUN apt-get update && apt-get install -y libxml2-dev autoconf g++ libtool make libcurl4-openssl-dev
RUN docker-php-ext-install -j$(nproc) pdo_mysql
RUN docker-php-ext-install -j$(nproc) mysqli
RUN docker-php-ext-install -j$(nproc) curl
RUN docker-php-ext-install -j$(nproc) mbstring
