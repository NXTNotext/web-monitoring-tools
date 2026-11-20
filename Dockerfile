FROM php:8.3-apache

# Instal ekstensi mysqli dan pdo_mysql untuk database
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Aktifkan mod_rewrite Apache agar routing URL CodeIgniter 3 berjalan normal
RUN a2enmod rewrite

# Salin seluruh file proyek ke folder web Apache
COPY . /var/www/html/

# Atur izin akses folder
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80