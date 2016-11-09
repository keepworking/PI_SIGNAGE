sleep 10
unclutter -idle 0 &
export DISPLAY=:0 && xset 0 dpms
export DISPLAY=:0 && chromium-browser -kiosk 127.0.0.1/index.html &
