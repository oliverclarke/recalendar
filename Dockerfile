FROM php:7.4

RUN apt-get update -y && apt-get install -y git libpng-dev
RUN docker-php-ext-install gd
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \ 
  php composer-setup.php && \ 
  php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

