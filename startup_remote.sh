#!/bin/bash
export JAVA_HOME=/usr/java/jdk1.8.0_181
export CLASSPATH=.:${JAVA_HOME}/jre/lib/rt.jar:${JAVA_HOME}/lib/dt.jar:${JAVA_HOME}/lib/tools.jar
export PATH=$PATH:${JAVA_HOME}/bin

echo "授予当前用户权限"
chmod 777 /apps/deploy_demo/demo-0.0.1-SNAPSHOT.jar
echo "执行....."
nohup java -jar /apps/deploy_demo/demo-0.0.1-SNAPSHOT.jar >demo.log &
echo "**********************cmp on  jenkins started*************************"
