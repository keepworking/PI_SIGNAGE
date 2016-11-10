sleep 10
unclutter -idle 0 &
export DISPLAY=:0
xset s off
xset -dpms
chromium-browser -kiosk 127.0.0.1/clock.html &
