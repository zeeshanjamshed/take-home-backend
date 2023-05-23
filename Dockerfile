FROM php:8.2-apache

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath opcache

COPY . .

RUN chown -R www-data:www-data /var/www/html \
    && a2enmod rewrite

CMD php artisan migrate \
    php artisan jwt:secret \
    php artisan key:generate \
    php artisan serve --host=0.0.0.0 --port=8000
