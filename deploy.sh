#!bin/bash
echo  "CHECKING IF PORT 8080 IS OCCUPIED"
netstat -ntulp | grep 8080
echo ""

echo "KILLING THE PROCESS"
kill -9 `sudo lsof -t -i:8080`
echo ""

echo "STARTING THE APPLICATION"
nohup java -jar *.jar </dev/null &>/dev/null &
echo ""

echo "CHECKING ALIVE JAVA PROCESSES"
netstat -ntulp | grep java
echo ""
sleep 20

echo "CHECKING TOMCAT PORT"
netstat -ntulp | grep 8080
echo ""

echo "LOAD AVERAGE IS:"
uptime
