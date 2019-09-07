# USING the PHP Docker image with the Apache server running on Debian Buster
FROM php:7.3.9-apache-buster

COPY ./htdocs/ /var/www/html
COPY apache/httpd.conf /etc/apache2/apache2.conf
