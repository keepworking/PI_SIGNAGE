#install

echo "start install"

apt-get update
apt-get upgrade -y
LIST="lxde lightdm xinit nginx php5-fpm php-apc"
apt-get install $LIST -y

echo "finish install package"

wget https://raw.githubusercontent.com/keepworking/PI_SIGNAGE/master/www/index.html
mv index.html /var/www/html/index.html
#인덱스 파일 다운로드

wget https://raw.githubusercontent.com/keepworking/PI_SIGNAGE/master/www/info.php
mv info.php /var/www/html/info.php
#php info 파일 다운로드

echo ""
echo "next install the chromium-borwser :)"
