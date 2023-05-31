FROM php:7.4-apache

# Установка драйвера PostgreSQL
RUN apt-get update && apt-get install -y libpq-dev
RUN docker-php-ext-install pdo pdo_pgsql

# Копирование кода приложения в контейнер
COPY ./www /var/www/html

# Необходимые настройки Apache
RUN a2enmod rewrite

# Запуск Apache при старте контейнера
CMD ["apache2-foreground"]
