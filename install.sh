#install
cd /home/pi/

echo "start install"

LIST="xinit x11-xserver-utils nginx php5-fpm php-apc unclutter gnome-schedule ttf-unfonts-core ibus ibus-hangul"
apt-get install $LIST -y

echo "finish install package"

apt-get remove xscreensaver -y
#스크린 세이버 삭제

wget https://raw.githubusercontent.com/keepworking/PI_SIGNAGE/master/update.sh
chmod +x update.sh

./update.sh

wget https://raw.githubusercontent.com/keepworking/PI_SIGNAGE/master/run.sh
chmod +x run.sh

wget https://raw.githubusercontent.com/keepworking/PI_SIGNAGE/master/default
mv default /etc/nginx/sites-available/default
#nginx setting file download

chmod -R 777 /var/www/html/

ibus engine hangul

#auto append crontab
crontab -u pi -l > mycron
echo "@reboot /home/pi/run.sh &" >> mycron
echo "* * * * * wget -O /var/www/html/weather.txt http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=2729057600" >> mycron
crontab -u pi mycron
rm mycron



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
