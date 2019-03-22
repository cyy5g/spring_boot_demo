#!/bin/bash
echo "deploy_remote_script"
#!/bin/bash
expect -c "
spawn scp startup_remote.sh root@192.168.160.111:/apps/deploy_script
expect {
\"*assword\" {set timeout 300; send \"cyy123456\r\";}
\"yes/no\" {send \"yes\r\"; exp_continue;}
}
expect eof"

expect -c "
spawn scp stop.sh root@192.168.160.111:/apps/deploy_script
expect {
\"*assword\" {set timeout 300; send \"cyy123456\r\";}
\"yes/no\" {send \"yes\r\"; exp_continue;}
}
expect eof"

expect -c "
spawn scp target/demo-0.0.1-SNAPSHOT.jar root@192.168.160.111:/apps/deploy_demo
expect {
\"*assword\" {set timeout 300; send \"cyy123456\r\";}
\"yes/no\" {send \"yes\r\"; exp_continue;}
}
expect eof"
