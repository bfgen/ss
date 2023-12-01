FROM php:8.3-fpm

WORKDIR /var/www/app

RUN apt update && apt install -yqq \
    curl \
    libpng-dev \
    libxml2-dev \
    zip \
    unzip \
    nodejs \
    npm

RUN docker-php-ext-install \
    opcache \
    intl \
    pdo \
    pdo_mysql

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

USER root

# Symfony CLI
RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | bash
RUN apt install -yqq \
    symfony-cli

# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

RUN chmod 777 -R /var/www/app
