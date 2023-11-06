ARG PHP_VERSION=8

FROM php:${PHP_VERSION}-fpm

LABEL maintainer="zhangxing <zhangxing@xgichina.com>"

# 设置APT源为国内源
RUN sed -i 's/http:\/\/deb.debian.org\/debian\//http:\/\/mirrors.aliyun.com\/debian\//g' /etc/apt/sources.list
RUN sed -i 's/http:\/\/security.debian.org\/debian-security\//http:\/\/mirrors.aliyun.com\/debian-security\//g' /etc/apt/sources.list

# 安装系统依赖
RUN apt-get update && apt-get install -y \
    # 安装你需要的系统依赖
    && rm -rf /var/lib/apt/lists/*

ARG PHP_EXTENSIONS="bcmath gd grpc mcrypt mongodb opcache pdo_mysql protobuf rdkafka redis xdebug xlswriter yaml"

# 下载安装PHP扩展工具
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN set -eux; \
    find /etc/apt/sources.list.d/ -type f -name "ondrej-ubuntu-php-xenial.list" -exec  sed  -i.bak -r  's#deb(-src)?\s*http(s)?://ppa.launchpad.net#deb\1 https\2://launchpad.proxy.ustclug.org#ig' {} \; && \
    chmod +x /usr/local/bin/install-php-extensions; \
    # 安装PHP扩展，使用国内源
    install-php-extensions ${PHP_EXTENSIONS}

WORKDIR /var/www
