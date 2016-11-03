#install

echo "start install"

apt-get update
apt-get upgrade
LIST="lxde lightdm xinit chromium-borwser nginx php5-fpm php-apc"
apt-get install $LIST -y

echo "finish install"
