#!/bin/bash
docker run -d -p 5000:5000 \
	-v /var/lib/docker/GA-registry:/GA-registry \
    	-e REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY=/GA-registry \
    --restart=always --name registry registry:2
