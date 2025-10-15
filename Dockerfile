# Imagen base de PHP con Apache
FROM php:8.2-apache

# Instalar extensiones necesarias para PostgreSQL y otras utilidades
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

# Configuración de Apache
COPY . /var/www/html/
WORKDIR /var/www/html

# Dar permisos a los archivos (útil si subes por GitHub)
RUN chown -R www-data:www-data /var/www/html

# Exponer el puerto HTTP
EXPOSE 80

# Iniciar Apache
CMD ["apache2-foreground"]
