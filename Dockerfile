FROM php:8.2-apache

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    docker-php-ext-install pdo_mysql mysqli

WORKDIR /var/www/html

COPY ./app/ /var/www/html/

RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html
