# Use the official PHP image with Apache
FROM php:8.2-apache

# Set working directory inside container
WORKDIR /var/www/html

# Copy all project files to the container
COPY . .

# Enable Apache mod_rewrite (optional, useful for many PHP projects)
RUN a2enmod rewrite

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
