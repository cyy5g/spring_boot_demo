#!/bin/bash
jar_name=demo-0.0.1-SNAPSHOT.jar
#!将现有的jar备份后，将新的jar包替换
file="/apps/deploy_demo/demo-0.0.1-SNAPSHOT.jar"
if [ -f "$file" ]
then
mv /apps/deploy_demo/demo-0.0.1-SNAPSHOT.jar /apps/deploy_demo_back/demo-0.0.1-SNAPSHOT.jar.`date +%Y%m%d%H%M%S`
fi
cp target/demo-0.0.1-SNAPSHOT.jar /apps/deploy_demo
