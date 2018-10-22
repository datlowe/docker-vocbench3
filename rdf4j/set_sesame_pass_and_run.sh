#!/bin/bash

sed -e "s/sesame_pass/$SESAME_PASS/" -i /usr/local/tomcat/conf/tomcat-users.xml 

source catalina.sh 