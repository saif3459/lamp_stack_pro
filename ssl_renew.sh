#!/bin/bash

# Renew SSL certificate
echo "Renewing SSL certificate..."
sudo certbot renew --quiet

# Reload Apache to apply the new certificate
echo "Reloading Apache to apply new certificate..."
sudo systemctl reload apache2

# Optional: Send renewal notification (you can replace with your own email)
echo "SSL certificate renewal complete for $DOMAIN" | mail -s "SSL Renewal Notification" your-email@example.com

echo "SSL certificate successfully renewed and Apache reloaded."