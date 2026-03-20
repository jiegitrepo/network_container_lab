#!/bin/bash

cat > hosts.txt << EOL
i1
i2
i3
i4
i5
i6
i7
r1
r2
r3
r4
r5
r6
sw1
sw2
sw3
sw4
sw5
sw6
EOL
rm ips.txt &&
docker inspect -f '{{.Name}} - {{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -q) | grep -v ansible | sort -i | awk -F ' - ' '{print $2}' >> ips.txt &&

sed '/^$/d' ips.txt
paste hosts.txt ips.txt | awk '{print $1 " ansible_host=" $2}' 