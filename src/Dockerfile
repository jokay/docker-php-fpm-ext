# kics-scan disable=fd54f200-402c-4333-a5a4-36ef6709af2f,d3499f6d-1651-41bb-a9a7-de925fea487b

# https://hub.docker.com/_/php
FROM docker.io/php:8.3.2-fpm-alpine@sha256:cb7a36489878e72129789163ce446539f7860e13a8734ade0ec8e8765324dffa

RUN apk add --no-cache \
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
