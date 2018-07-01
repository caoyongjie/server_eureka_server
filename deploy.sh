#!/usr/bin/env bash
cd $PROJ_PATH/server_eureka_server
mvn clean install
nohup java -jar server_eureka_server.jar
