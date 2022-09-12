FROM php:apache

USER root

RUN docker-php-ext-install pdo_mysql
RUN apt-get update && apt-get upgrade -y
RUN apt-get update && apt-get install -y \
    git \
    zip \
    curl \
    sudo \
    unzip \
    libzip-dev \
    libicu-dev \
    libbz2-dev \
    libpng-dev \
    libjpeg-dev \
    libmcrypt-dev \
    libreadline-dev \
    libfreetype6-dev \
    g++

#################### INSTALL NODEJS ####################
# update
RUN apt-get update
# install curl
RUN apt-get install curl
# get install script and pass it to execute:
RUN curl -sL https://deb.nodesource.com/setup_17.x | bash
# and install node
RUN apt-get install nodejs
# confirm that it was successful
RUN node -v
# npm installs automatically
RUN npm -v

# install tail
RUN npm install -g tail

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN chown -R www-data:www-data /var/www/html && a2enmod rewrite
