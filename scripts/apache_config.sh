#!/bin/bash
# Script to add config lines in the apache config file

apache_vhost_file="/etc/apache2/sites-available/default"

# Add proxy pass lines at the end of the apache config file
# using sed
sed -i '/<\/VirtualHost>/i \
ProxyPassMatch    ^/web(.*) http://localhost:8080/evalidate-dei-1.0-SNAPSHOT/
ProxyPassReverse  ^/web(.*) http://localhost:8080/evalidate-dei-1.0-SNAPSHOT/
' $apache_vhost_file
