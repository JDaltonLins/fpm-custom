FROM phpmyadmin/phpmyadmin:fpm-alpine

ARG PHP_EXTENSIONS_INSTALL="mysqli pdo pdo_mysql"
ARG PHP_EXTENSIONS_ENABLE="mysqli pdo pdo_mysql"

RUN apk add --no-cache icu-dev

RUN if [ -n "${PHP_EXTENSIONS_INSTALL}" ]; then \
    docker-php-ext-install ${PHP_EXTENSIONS_INSTALL} \
  ;fi

RUN if [ -n "${PHP_EXTENSIONS_ENABLE}" ]; then \
    docker-php-ext-enable ${PHP_EXTENSIONS_ENABLE} \
  ;fi