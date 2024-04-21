FROM phpmyadmin/phpmyadmin:fpm-alpine
RUN docker-php-ext-install mysqli pdo pdo_mysql