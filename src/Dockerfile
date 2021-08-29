FROM docker.io/php:7.4.23-fpm-alpine3.14@sha256:7193180ad7104d4c74d17cd7d36ccd9f025ded84fd7b6a7a03e14f4f6682ea2e

RUN apk add --update --no-cache \
        fcgi \
        tzdata \
        freetype-dev \
        libjpeg-turbo-dev \
        libpng-dev && \
    docker-php-ext-install -j"$(nproc)" iconv && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install -j"$(nproc)" gd && \
    docker-php-ext-install mysqli

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD \
    SCRIPT_NAME=/ping \
    SCRIPT_FILENAME=/ping \
    REQUEST_METHOD=GET \
    cgi-fcgi -bind -connect 127.0.0.1:9000 || exit 1
