# PI_SIGNAGE
raspberry pi project Signage


downlaod and install
```
wget https://raw.githubusercontent.com/keepworking/PI_SIGNAGE/master/install.sh
sudo chmod +x install.sh
sudo ./install.sh
```

install chromium-borwser 

```
sudo apt-get install chromium-borwser
```

edit the nginx /etc/nginx/sites-available/default file 

```
sudo nano /etc/nginx/sites-available/default
```
edit command

```

        # Add index.php to the list if you are using PHP
        index index.php index.html index.htm index.nginx-debian.html;

        server_name _;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }

        # pass the PHP scripts to FastCGI server listening on 127.0.0.1:9000
        #
        location ~ \.php$ {
                include snippets/fastcgi-php.conf;

                # With php5-cgi alone:
                #fastcgi_pass 127.0.0.1:9000;
                # With php5-fpm:
                fastcgi_pass unix:/var/run/php5-fpm.sock;
        }

        # deny access to .htaccess files, if Apache's document root
        # concurs with nginx's one
        #
        location ~ /\.ht {
                deny all;
        }

```




