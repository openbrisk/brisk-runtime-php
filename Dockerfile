FROM php:7-alpine

ENV PATH="/root/.composer/vendor/bin:${PATH}"
ENV COMPOSER_ALLOW_SUPERUSER=1
ENV DOCKER=1

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /app
COPY ./public ./public
COPY ./src ./src
COPY composer.json .

RUN composer install --no-dev

EXPOSE 8080

ENTRYPOINT ["php"]
CMD ["-S", "0.0.0.0:8080", "-t", "public", "./public/index.php"]