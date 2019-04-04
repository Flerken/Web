sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo rm /etc/nginx/sites-enabled/default
sudo servise nginx stop
sudo nginx -c /etc/nginx/sites-enabled/test.conf

sudo ln -s /home/box/web/etc/gunicorn.py /etc/gunicorn.d/gunicorn.py
cd /home/box/web/ && sudo gunicorn -c /home/box/web/etc/gunicorn.py hello:application

sudo /etc/init.d/mysql start
