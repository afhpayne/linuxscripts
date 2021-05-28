#!/bin/bash

apt install tmux htop tree wget unzip rsync \
&&

apt install -y apache2 mariadb-server libapache2-mod-php7.4 \
&&

apt install -y \
    libxml2 \
&&

apt install -y \
    php7.4-mysql \
    php-imagick \
    php7.4-xml \
    php7.4-zip \
    php7.4-ctype \
    php7.4-curl \
    php7.4-dom \
    php7.4-gd \
    php7.4-iconv \
    php7.4-json \
    php7.4-mbstring \
    php7.4-posix \
    php7.4-SimpleXML \
    php7.4-XMLReader \
    php7.4-XMLWriter \
    php7.4-zip \
    php7.4-fileinfo \
    php7.4-bz2 \
    php7.4-intl \
    php7.4-ldap \
    php7.4-ftp \
    php7.4-imap \
    php7.4-bcmath \
    php7.4-gmp \
    php7.4-exif \
&&
# Missing
    # php7.4-libxml \
    # php7.4-openssl \
    # php7.4-session \
    # php7.4-zlib \
    # php7.4-pdo_mysql \
    # php7.4-smbclient \

/etc/init.d/mysql start \
&&
mysql -uroot -p
