#!/bin/bash
echo "deploy_local_script"
sh stop.sh
sh replace_local.sh
echo "Execute shell Finish"
chmod 777 startup.sh
sh startup.sh