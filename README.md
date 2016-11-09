# PI_SIGNAGE - 라즈베리파이를 이용한 사이니지 프로젝트

## 하드웨어를 포함한 기본준비 사항

* 라즈베리 파이 3 (다른 라즈베리파이에서 호환성은 확증되지 않습니다.)
* 라즈비안 JESSI LITE (pixel GUI 버전은 무겁기에 라이트를 설치합니다.)
* 디스플레이 (모니터를 사용해도 좋습니다.)
* 라즈베리 파이의 기본설정 완료
  * WIFI나 이더넷 연결 설정
  * SSH 접속이나, 키보드와 마우스를 통한 작업환경
  * 디스플레이 해상도 맞춤
  * 한글폰트 설치



## 소프트웨어 다운로드 및, 설치 작업

패키지 목록을 업데이트하고 기본 패키지들을 업그레이드 합니다.

```
sudo apt-get update
sudo apt-get upgerade -y
```

기본적으로 필요한 패키지들을 다운로드 하고, 설치해줍니다.

초기 설치 내용은 쉘 스크립트로 작성이 되어있으니 wget을 통해서 다운로드 해줍니다.
```
wget https://raw.githubusercontent.com/keepworking/PI_SIGNAGE/master/install.sh
sudo chmod +x install.sh
sudo ./install.sh
```

크로미움 브라우저를 설치합니다.
```
sudo apt-get install chromium-borwser
```

<<<<<<< HEAD
nginx의 설정파일을 수정합니다.

```
sudo nano /etc/nginx/sites-available/default
```
nano나, vi등 익숙한 에디터로 파일을 수정해줍니다.

소스코드 내부의 아래에해당된 부분을 맞게 수정해줍니다.

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
수정이 다되었다면,
다음 명령을 실행합니다.

```
sudo /etc/init.d/nginx reload
```
다음으로 사이니지가 매번 부팅 될때마다 실행 될수 있도록 설정을 해야합니다.

다음의 명령을 실행해줍니다.

```
export VISUAL=nano; crontab -e
```

나노 에디터의 마지막 줄에 다음 명령을 저장해줍니다.
```
@reboot /home/pi/run.sh &
```

=======
설치 완료후, 재부팅을 해줍니다.
>>>>>>> origin/master

재부팅 이후에는 라즈베리 파이에서 웹브라우저를 통해 127.0.0.1 에 접속하거나
또는 PC, 스마트폰 웹브라우저를 통해 라즈베리 파이의 IP주소로 접속합니다.

진행중...
