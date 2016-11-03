#install

echo "start install"

apt-get update
apt-get upgrade -y
LIST="lxde lightdm xinit nginx php5-fpm php-apc"
apt-get install $LIST -y

echo "finish install"
echo ""
echo "next install the chromium-borwser :)"

