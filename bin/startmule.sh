#!/bin/bash
docker run -d -p 8888:8081 -v /home/architekt/docker-configs/esb/logs:/opt/mule/logs -v /home/architekt/docker-configs/esb/apps:/opt/mule/apps ruv/esb
