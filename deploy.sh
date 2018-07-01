#!/usr/bin/env bash
cd $PROJ_PATH
mvn clean install
nohup java -jar server_eureka_server.jar
