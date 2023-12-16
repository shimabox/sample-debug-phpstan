FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    unzip \
    libzip-dev \
    && rm -rf /var/lib/apt/lists/* # キャッシュクリア

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# xdebug
COPY ./docker/docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/
RUN pecl install xdebug && docker-php-ext-enable xdebug
