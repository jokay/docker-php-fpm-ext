# Docker PHP-FPM with extensions

Docker image containing [PHP-FPM Alpine](https://hub.docker.com/_/php) and some [extensions](https://github.com/x-jokay/docker-php-fpm-ext#supported-php-extensions).

## Information

| Service                                                   | Stats |
|-----------------------------------------------------------|-------|
| [GitHub](https://github.com/x-jokay/docker-php-fpm-ext)   | ![Last commit](https://img.shields.io/github/last-commit/x-jokay/docker-php-fpm-ext.svg?style=flat-square) ![Issues](https://img.shields.io/github/issues-raw/x-jokay/docker-php-fpm-ext.svg?style=flat-square) ![PR](https://img.shields.io/github/issues-pr-raw/x-jokay/docker-php-fpm-ext.svg?style=flat-square) |
| [Docker Hub](https://hub.docker.com/r/xjokay/php-fpm-ext) | ![Pulls](https://img.shields.io/docker/pulls/xjokay/php-fpm-ext.svg?style=flat-square) ![Stars](https://img.shields.io/docker/stars/xjokay/php-fpm-ext.svg?style=flat-square) |

## Usage

```sh
docker pull ghcr.io/x-jokay/php-fpm-ext:latest
```

or

```sh
docker pull xjokay/php-fpm-ext:latest
```

### Tags

| Tag       | Description | Size |
|-----------|-------------|------|
| latest    | [Latest](https://github.com/x-jokay/docker-php-fpm-ext/releases/latest) release | ![Size](https://shields.beevelop.com/docker/image/image-size/xjokay/php-fpm-ext/latest.svg?style=flat-square) |
| {release} | Specific release version, see available [releases](https://github.com/x-jokay/docker-php-fpm-ext/releases) | |

### Supported php extensions

The following php extensions are supported:

- [iconv](https://www.php.net/manual/en/intro.iconv.php)
- [gd](https://www.php.net/manual/en/intro.image.php)
- [mysqli](https://www.php.net/manual/en/intro.mysqli.php)
