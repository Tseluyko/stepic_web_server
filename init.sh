sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf.py   /etc/gunicorn.d/test.py
sudo /etc/init.d/gunicorn stop
gunicorn -c /etc/gunicorn.d/test.py hello:wsgi_application
sudo /etc/init.d/mysql start
