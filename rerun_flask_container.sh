#!/bin/bash


docker stop flask
docker rm flask
docker run -itd \
	-v `pwd`/data:/worker \
	-v `pwd`/flask_demos:/flask_demos \
	-v `pwd`/jinjia2:/jinjia2 \
	--name flask \
	-p 8888:80 flask

