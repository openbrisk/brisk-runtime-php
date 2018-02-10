FROM php:7.2.2-alpine

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./public /app
COPY ./src /app

WORKDIR /app

RUN composer install

EXPOSE 8080

ENTRYPOINT ["php"]
CMD ["-S", "0.0.0.0:8080", "-t", "public", "index.php"]