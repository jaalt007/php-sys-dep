FROM php:7.4-fpm-alpine AS system-setup

RUN apk add --no-cache dcron busybox-suid libcap curl zip unzip git

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/
RUN install-php-extensions intl bcmath gd pdo_mysql pdo_pgsql opcache redis uuid exif pcntl zip
