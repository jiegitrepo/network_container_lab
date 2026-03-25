#!/bin/bash

cat > hosts.txt << EOL
c1
c2
c3
c4
r1
r2
r3
r4
r5
r6
EOL
rm ips.txt &&
docker inspect -f '{{.Name}} - {{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -q) | grep -v ansible | sort -i | awk -F ' - ' '{print $2}' >> ips.txt &&

sed '/^$/d' ips.txt
paste hosts.txt ips.txt | awk '{print $1 " ansible_host=" $2}' 