#!/bin/bash
docker run --restart=always --net=host -p 88:80 -d -v /home/architekt/docker-configs/haproxy-config:/usr/local/etc/haproxy haproxy
