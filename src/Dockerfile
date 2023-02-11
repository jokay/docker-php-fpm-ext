# https://hub.docker.com/_/php
FROM docker.io/php:8.2.2-fpm-alpine@sha256:b75f80b88ab0227fd482155da930e2e8a6194b66702a7a51e32bd342c21a991c

RUN apk add --update --no-cache \
        fcgi \
        tzdata \
        freetype-dev \
        libjpeg-turbo-dev \
        libpng-dev && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install -j"$(nproc)" gd && \
    docker-php-ext-install mysqli

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD \
    SCRIPT_NAME=/ping \
    SCRIPT_FILENAME=/ping \
    REQUEST_METHOD=GET \
    cgi-fcgi -bind -connect 127.0.0.1:9000 || exit 1
