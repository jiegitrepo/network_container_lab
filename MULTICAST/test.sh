#!/bin/bash

FILE="host.txt"
DIR=$(pwd)

if [ -f "~/host" ]; then
    rm hosts.txt &&
    touch hosts.txt && 
    cat << EOL > hosts.txt
    c1
    c2
    r1
    r2
    r3
    r4
    s1
    EOL
    echo "Done"
    # rm ips.txt &&
    # docker inspect -f '{{.Name}} - {{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -q) | grep -v ansible | sort -i | awk -F ' - ' '{print $2}' >> ips.txt &&

    # sed '/^$/d' ips.txt
    # paste hosts.txt ips.txt | awk '{print $1 " ansible_host=" $2}' 
else
    touch hosts.txt && 
    cat << EOL > hosts.txt
    c1
    c2
    r1
    r2
    r3
    r4
    s1
    EOL
    echo "Fail"
    # rm ips.txt &&
    # docker inspect -f '{{.Name}} - {{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -q) | grep -v ansible | sort -i | awk -F ' - ' '{print $2}' >> ips.txt &&

    # sed '/^$/d' ips.txt
    # paste hosts.txt ips.txt | awk '{print $1 " ansible_host=" $2}' 
fi
