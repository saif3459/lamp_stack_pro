#!/bin/bash

# Check Apache status
APACHE_STATUS=$(systemctl is-active apache2)

# Check MySQL status
MYSQL_STATUS=$(systemctl is-active mysql)

# Define notification email
EMAIL="bsaif9977@gmail.com"

# Check if Apache is running
if [ "$APACHE_STATUS" != "active" ]; then
    echo "Apache is down!" | mail -s "Apache Server Down Alert" $EMAIL
    echo "Apache service is down, notification sent."
else
    echo "Apache is running" | mail -s "Apache Server is running" $EMAIL
fi

# Check if MySQL is running
if [ "$MYSQL_STATUS" != "active" ]; then
    echo "MySQL is down!" | mail -s "MySQL Server Down Alert" $EMAIL
    echo "MySQL service is down, notification sent."
else
    echo "MySQL is running."
fi
