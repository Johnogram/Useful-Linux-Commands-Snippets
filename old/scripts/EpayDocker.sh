#!/bin/bash
echo "--------------------------------------------------------------------------------------------------"
echo "Starting Epaysafe Docker"
echo "--------------------------------------------------------------------------------------------------"
sudo service mysql stop
sudo service apache2 stop
docker stop epaysafe-test-db
docker stop epaysafe-test-web
docker build -t dataplan/epaysafe-test-web:latest .
docker run \
    -d \
    -p 3306:3306 \
    --rm \
    --name epaysafe-test-db \
    --tmpfs /var/lib/mysql:rw \
    -e MYSQL_ROOT_PASSWORD=secure \
    -e MYSQL_DATABASE=ps2 \
    mysql:5.7 \
    --sql-mode="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION" \
    --max_allowed_packet=1024M
docker run \
    -d \
    -p 8080:80 \
    --rm \
    --name epaysafe-test-web \
    --link epaysafe-test-db:mysql-server \
    -v "${PWD}:/var/www/html" \
    -e APACHE_RUN_USER=www-data \
    -e APACHE_RUN_GROUP=www-data \
    dataplan/epaysafe-test-web
sleep 10
cp ./test/config/config.example.js ./test/config/config.js
cp ./common/settings.template.php ./common/settings.php
cp ./phinx.yml.dist ./phinx.yml
composer install
yarn install
./vendor/bin/phinx migrate
./vendor/bin/phinx seed:run
grunt
echo ""
echo "Epaysafe Docker Running"
echo "--------------------------------------------------------------------------------------------------"
docker container ls
echo "--------------------------------------------------------------------------------------------------"
