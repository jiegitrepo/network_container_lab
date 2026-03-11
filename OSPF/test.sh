name: ospf-lab

topology:
  nodes:
    r1:
      kind: linux
      image: frrouting/frr:latest
      binds:
        - ./start.sh:/start.sh
      cmd: sh /start.sh
      volume: frr_r1_data:/etc/frr

    r2:
      kind: linux
      image: frrouting/frr:latest
      binds:
        - ./start.sh:/start.sh   
      cmd: sh /start.sh

    r3:
      kind: linux
      image: frrouting/frr:latest
      binds:
        - ./start.sh:/start.sh 
      cmd: sh /start.sh

    r4:
      kind: linux
      image: frrouting/frr:latest
      binds:
        - ./start.sh:/start.sh  
      cmd: sh /start.sh

    r5:
      kind: linux
      image: frrouting/frr:latest
      binds:
        - ./start.sh:/start.sh  
      cmd: sh /start.sh

    r6:
      kind: linux
      image: frrouting/frr:latest
      binds:
        - ./start.sh:/start.sh    
      cmd: sh /start.sh

    r7:
      kind: linux
      image: frrouting/frr:latest
      binds:
        - ./start.sh:/start.sh 
      cmd: sh /start.sh

  volumes:
    frr_r1_data: {}
    frr_r2_data: {}
    frr_r3_data: {}
    frr_r4_data: {}
    frr_r5_data: {}
    frr_r6_data: {}
    frr_r7_data: {}


  links:
    - endpoints: ["r1:eth1", "r2:eth1"]
    - endpoints: ["r2:eth2", "r3:eth1"]
    - endpoints: ["r3:eth2", "r4:eth1"]
    - endpoints: ["r4:eth2", "r5:eth1"]
    - endpoints: ["r5:eth2", "r6:eth1"]
    - endpoints: ["r3:eth3", "r7:eth1"]