#!bin/bash
echo "CHECKING IF PORT 8080 IS OCCUPIED"
netstat -ntulp | grep 8080

echo "KILLING THE PROCESS"
kill -9 `sudo lsof -t -i:8080`

echo "STARTING THE APPLICATION"
nohup java -jar Gateway-0.0.1-SNAPSHOT.jar </dev/null &>/dev/null &

echo "CHECKING ALIVE JAVA PROCESSES"
netstat -ntulp | grep java

sleep 20

echo "CHECKING TOMCAT PORT"
netstat -ntulp | grep 8080

echo "LOAD AVERAGE IS:"
uptime
