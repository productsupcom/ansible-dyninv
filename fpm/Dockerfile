FROM php:7.1.5-fpm

RUN apt-get update && apt-get install -y libxml2-dev autoconf g++ libtool make libcurl4-openssl-dev git zlib1g-dev mysql-client
RUN docker-php-ext-install -j$(nproc) pdo_mysql
RUN docker-php-ext-install -j$(nproc) mysqli
RUN docker-php-ext-install -j$(nproc) curl
RUN docker-php-ext-install -j$(nproc) mbstring
RUN docker-php-ext-install -j$(nproc) zip
RUN apt-get install -y python-pip
RUN pip install j2cli

RUN curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/local/bin
