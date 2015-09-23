#!/bin/bash
docker run --name ga-mysql -e MYSQL_ROOT_PASSWORD=Architektur2015 -v /data/mysql:/var/lib/mysql -d mysql
sleep 30
docker run --name ga-mediawiki --link ga-mysql:mysql -v /data/mediawiki:/var/www/html -d -p 8888:80 synctree/mediawiki
