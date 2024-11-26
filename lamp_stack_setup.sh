#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt update -y

# Install Apache2
echo "Installing Apache2..."
sudo apt install apache2 -y

# Install MySQL
echo "Installing MySQL..."
sudo apt install mysql-server -y

# Install PHP and necessary modules
echo "Installing PHP and required modules..."
 lamp_stack_setup.shsudo apt install php libapache2-mod-php php-mysql -y

# Enable Apache and MySQL to start on boot
echo "Enabling Apache2 and MySQL services to start on boot..."
sudo systemctl enable apache2
sudo systemctl enable mysql

# Start Apache and MySQL services
echo "Starting Apache2 and MySQL services..."
sudo systemctl start apache2
sudo systemctl start mysql

# Create a test PHP file
echo "Creating test PHP file..."
echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php

# Confirm installation
echo "Apache2, MySQL, and PHP installed successfully."
echo "Test PHP page can be accessed at http://<your_server_ip>/info.php"