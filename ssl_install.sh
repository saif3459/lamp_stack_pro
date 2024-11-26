#!/bin/bash

# Install Certbot and Apache plugin
echo "Installing Certbot and Apache plugin..."
sudo apt install certbot python3-certbot-apache -y

# Replace with your actual domain name
DOMAIN="http://172.30.161.203/"
EMAIL="bsaif9977@gmaill.com"

# Obtain SSL certificate from Let's Encrypt
echo "Obtaining SSL certificate for $DOMAIN..."
sudo certbot --apache -d $DOMAIN -d www.$DOMAIN --email $EMAIL --agree-tos --non-interactive

# Enable Apache SSL module
echo "Enabling Apache SSL module..."
sudo a2enmod ssl

# Redirect HTTP to HTTPS
echo "Redirecting HTTP to HTTPS..."
sudo sed -i 's|DocumentRoot /var/www/html|Redirect permanent / https://'$DOMAIN'/|' /etc/apache2/sites-available/000-default.conf

# Restart Apache to apply changes
echo "Restarting Apache to apply changes..."
sudo systemctl restart apache2

# Confirm SSL certificate installation
echo "SSL certificate installed successfully."
echo "You can visit your website at https://$DOMAIN to verify the SSL certificate."
