#!/usr/bin/env bash

#关闭tomcat
killTomcat()
{
   pid=`ps -ef|grep tomcat|grep java|awk '{print $2}'`
   echo "tomcat Id LIST :$pid"
   if [ "$pid" = "" ]
   then
     echo "----Tomcat-test 已经关闭----"
   else
      kill -9 $pid
   fi
}
cd $PROJ_PATH/server_eureka_server
mvn clean install
#nohup java -jar server_eureka_server.jar
killTomcat

cp $PROJ_PATH/server_eureka_server/target/server_eureka_server.war $TOMCAT_APP_PATH/webapps/

cd $TOMCAT_APP_PATH/

sh bin/startup.sh