#install

echo "start install"

LIST="lxde lightdm xinit nginx php5-fpm php-apc"
apt-get install $LIST -y

echo "finish install package"

wget https://raw.githubusercontent.com/keepworking/PI_SIGNAGE/master/www/index.html
mv index.html /var/www/html/index.html
#인덱스 파일 다운로드

wget https://raw.githubusercontent.com/keepworking/PI_SIGNAGE/master/www/info.php
mv info.php /var/www/html/info.php
#php info 파일 다운로드

wget https://raw.githubusercontent.com/keepworking/PI_SIGNAGE/master/default
mv default /etc/nginx/sites-available/default
#nginx setting file download

echo ""
echo "next install the chromium-borwser :)"
echo "After five seconds to exit."
echo "5"
sleep 1
echo "4"
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
reboot
