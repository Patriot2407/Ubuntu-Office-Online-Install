#!/bin/bash
mkdir /etc/loolwsd/certs/
chmod -R 777 /etc/loolwsd/certs/
cp /etc/letsencrypt/live/* /etc/loolwsd/certs/
mv /etc/loolwsd/loolwsd.xml /etc/loolwsd/loolwsd.xml.ORIGINAL
cp /Scripts/Ubuntu-Office-Online-Install/loolwsd.xml /etc/loolwsd/
cp /Scripts/Ubuntu-Office-Online-Install/office-online.conf /etc/apache2/sites-available/
apachectl configtest
apachectl restart
systemctl stop loolwsd
systemctl start loolwsd
echo "started loolwsd"
exit 0
