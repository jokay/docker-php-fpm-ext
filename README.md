# Docker PHP-FPM with extensions

Docker image containing [PHP-FPM](https://hub.docker.com/_/php) and some
[extensions](https://github.com/jokay/docker-php-fpm-ext#supported-php-extensions)
based on [Alpine Linux](https://www.alpinelinux.org).

> Security support for PHP **7.4** is ending on **28 November 2022**.  
> This image will then be upgrade to PHP **8.1**.

## Information

| Service                                                   | Stats                                                                                                                                                                                                                                                                                                         |
| --------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [GitHub](https://github.com/jokay/docker-php-fpm-ext)     | ![Last commit](https://img.shields.io/github/last-commit/jokay/docker-php-fpm-ext.svg?style=flat-square) ![Issues](https://img.shields.io/github/issues-raw/jokay/docker-php-fpm-ext.svg?style=flat-square) ![PR](https://img.shields.io/github/issues-pr-raw/jokay/docker-php-fpm-ext.svg?style=flat-square) |
| [Docker Hub](https://hub.docker.com/r/xjokay/php-fpm-ext) | ![Pulls](https://img.shields.io/docker/pulls/xjokay/php-fpm-ext.svg?style=flat-square) ![Stars](https://img.shields.io/docker/stars/xjokay/php-fpm-ext.svg?style=flat-square)                                                                                                                                 |

## Usage

```sh
docker pull docker.io/xjokay/php-fpm-ext:latest
```

### Tags

| Tag       | Description                                                                                              |
| --------- | -------------------------------------------------------------------------------------------------------- |
| latest    | [Latest](https://github.com/jokay/docker-php-fpm-ext/releases/latest) release                            |
| {release} | Specific release version, see available [releases](https://github.com/jokay/docker-php-fpm-ext/releases) |

### Supported php extensions

The following php extensions are supported:

- [iconv](https://www.php.net/manual/en/intro.iconv.php)
- [gd](https://www.php.net/manual/en/intro.image.php)
- [mysqli](https://www.php.net/manual/en/intro.mysqli.php)
