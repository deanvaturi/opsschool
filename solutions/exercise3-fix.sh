#!/bin/bash
#when trying to reach to http://192.168.60.10/ through browser we are getting "Forbidden - Apache/2.4.41 (Ubuntu) Server at 192.168.60.10 Port 80" since inside of the apache config the permissions are set to denied all and needs to be approved.
#the message is: "Hello world"
sudo sed -i 's/Require all denied/Require all granted/g' /etc/apache2/sites-available/000-default.conf
sudo systemctl restart apache2