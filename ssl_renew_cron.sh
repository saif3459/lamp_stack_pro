#!/bin/bash

# Add cron job for automatic SSL renewal
echo "Setting up automatic SSL renewal..."
(crontab -l ; echo "0 0,12 * * * /usr/bin/certbot renew --quiet && systemctl reload apache2") | crontab -

# Confirm cron job
echo "Cron job set up to renew SSL certificates twice a day."