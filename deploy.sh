#!bin/bash

echo "CHECKING IF PORT 8080 IS OCCUPIED"

sleep 1

netstat -ntulp | grep 8080

sleep 1

echo "KILLING THE PROCESS"

kill -9 `sudo lsof -t -i:8080`

echo "STARTING THE APPLICATION"

nohup java -jar Gateway-0.0.1-SNAPSHOT.jar </dev/null &>/dev/null &

sleep 5

echo "CHECKING ALIVE JAVA PROCESSING"

netstat -ntulp | grep java

sleep 10

echo "CHECKING TOMCAT PORT"

netstat -ntulp | grep 8080

echo "LOAD AVERAGE IS: "

uptime
