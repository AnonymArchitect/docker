#!/bin/bash
docker run -d -p 5000:5000 \
	-v /var/lib/docker/GA-registry:/GA-registry \
	-v /home/architekt/docker/certs:/certs \
    	-e REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY=/GA-registry \
	-e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt \
	-e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
    --restart=always --name registry registry:2
