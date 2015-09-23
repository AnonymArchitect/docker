#!/bin/bash
docker stop ga-mediawiki ga-mysql
docker rm ga-mysql
docker rm ga-mediawiki
