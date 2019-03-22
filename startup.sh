#!/bin/bash
echo "授予当前用户权限"
chmod 777 /apps/deploy_demo/demo-0.0.1-SNAPSHOT.jar
echo "执行....."
BUILD_ID=dontKillMe nohup java -jar /apps/deploy_demo/demo-0.0.1-SNAPSHOT.jar &
echo "**********************cmp on  jenkins started*************************"
