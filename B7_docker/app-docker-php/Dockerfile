FROM php:8.2-fpm as backend

RUN apt-get update && apt-get install -y \
    libzip-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    git \
    unzip

WORKDIR /var/www/html/backend

CMD ["php-fpm"]
