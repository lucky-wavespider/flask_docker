#!/bin/bash


docker stop flask
docker rm flask
docker run -itd \
	-v `pwd`/data:/worker \
	--name flask \
	-p 8888:80 flask  

