#!/bin/bash

set -e

if [ -f /etc/configured ]; then
        echo 'already configured'
else
      #code that need to run only one time ....
      
        #to fix problem with data.timezone that appear at 1.28.108 for some reason
        sed  -i "s|\;date.timezone =|date.timezone = \"${TZ:-Europe/Paris}\"|" /etc/php/7.2/apache2/php.ini
        sed  -i "s|\;date.timezone =|date.timezone = \"${TZ:-Europe/Paris}\"|" /etc/php/7.2/cli/php.ini
        echo 'default-time-zone = '$TZ >> /etc/mysql/my.cnf
        #needed for fix problem with ubuntu and cron
        update-locale 
        date > /etc/configured
fi
