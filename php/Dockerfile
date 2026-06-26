FROM php:8.3-fpm

ARG UID=1001
ARG GID=1001

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    zip \
    curl \
    wget \
    libicu-dev \
    libxml2-dev \
    libzip-dev \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libxslt1-dev \
    libonig-dev \
    libssl-dev \
    default-mysql-client \
    && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure gd \
    --with-freetype \
    --with-jpeg

RUN docker-php-ext-install -j$(nproc) \
    bcmath \
    intl \
    mysqli \
    pdo_mysql \
    soap \
    sockets \
    ftp \
    xsl \
    zip \
    gd

RUN pecl install redis \
 && docker-php-ext-enable redis

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

RUN groupadd -g ${GID} clp \
 && useradd -u ${UID} -g clp -m test-ssh

WORKDIR /var/www/html

USER test-ssh
