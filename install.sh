#install
cd /home/pi/

echo "start install"

LIST="lxde lightdm xinit x11-xserver-utils nginx php5-fpm php-apc unclutter gnome-schedule"
apt-get install $LIST -y

echo "finish install package"

apt-get remove xscreensaver -y
#나는... 스크린 세이버가 싫다.. 정말.. 싫..다..


#wget https://raw.githubusercontent.com/keepworking/PI_SIGNAGE/master/www/index.html
#mv index.html /var/www/html/index.html
#인덱스 파일 다운로드

#wget https://raw.githubusercontent.com/keepworking/PI_SIGNAGE/master/www/info.php
#mv info.php /var/www/html/info.php
#php info 파일 다운로드

wget https://github.com/keepworking/RPS_BOARD/archive/master.zip
unzip master.zip
rm master.zip
cp -R -f RPS_BOARD-master/* /var/www/html/
rm -r RPS_BOARD-master/

wget https://raw.githubusercontent.com/keepworking/PI_SIGNAGE/master/run.sh
chmod +x run.sh

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
