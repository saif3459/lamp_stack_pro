#!/bin/bash

# Install UFW (Uncomplicated Firewall) if not installed
sudo apt install ufw -y

# Allow SSH, HTTP, and HTTPS traffic
echo "Allowing SSH, HTTP, and HTTPS traffic..."
sudo ufw allow OpenSSH
sudo ufw allow 'Apache Full'

# Enable the firewall
echo "Enabling the firewall..."
sudo ufw enable

# Check UFW status
echo "Firewall status:"
sudo ufw statusS