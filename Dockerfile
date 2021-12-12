# thestagingcommunity.com
#
# Build Image to AWS ECR
# 1. docker build -t thestagingcommunity:0.0.1-wp-5.8.2 .
# 2. Update docker-compose.yaml to use new image.

FROM wordpress:5.8.2-php8.0-apache

# General OS and package updates.
RUN apt-get update && apt-get install -y \
  git-core \
  libxml2-dev

# Required artifacts.
# COPY ./artifacts/google92basddssdb1.html /var/www/html
# COPY ./artifacts/pinterest-sadfas.html /var/www/html

# PHP Settings
COPY ./artifacts/php.conf.main.ini /usr/local/etc/php/conf.d




