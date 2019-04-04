sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo rm /etc/nginc/sites-enabled/default
sudo servise ngins stop
sudo ngins -c /etc/nginc/sites-enabled/test.conf

sudo ln -s /home/box/web/etc/qunicorn.py /etc/qunicorn.d/qunicorn.py
cd /home/box/web/ && sudo qunicorn -c /home/box/web/etc/qunicorn.py hello:application

sudo /etc/init.d/mysql start
