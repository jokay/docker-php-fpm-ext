FROM php:fpm-alpine

ENV TZ UTC

RUN apk add --update --no-cache \
        tzdata \
        freetype-dev \
        libjpeg-turbo-dev \
        libpng-dev && \
    echo ${TZ} > /etc/timezone && \
    docker-php-ext-install -j$(nproc) iconv && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install -j$(nproc) gd
