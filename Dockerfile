FROM php:7.4.14-fpm-alpine3.12

ARG MAINTAINER
ARG REPOSITORY
ARG VERSION
ARG COMMIT
ARG DATE

LABEL Maintainer=${MAINTAINER} \
      Repository=${REPOSITORY} \
      Version=${VERSION} \
      Commit=${COMMIT} \
      Date=${DATE} \
      org.opencontainers.image.source=${REPOSITORY}

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
