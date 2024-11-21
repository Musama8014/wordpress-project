# Use the official WordPress image as the base image
FROM wordpress:latest

# Copy your theme files into the WordPress container
COPY ./ /var/www/html/wp-content/themes/your-theme-folder/

# Set permissions for the WordPress theme
RUN chown -R www-data:www-data /var/www/html/wp-content/themes/your-theme-folder

# Expose the default WordPress port
EXPOSE 80
