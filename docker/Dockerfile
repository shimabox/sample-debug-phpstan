FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    unzip \
    libzip-dev \
    && rm -rf /var/lib/apt/lists/* # キャッシュクリア

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
