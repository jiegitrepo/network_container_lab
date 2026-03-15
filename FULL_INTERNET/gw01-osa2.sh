! PID: NCS-55A2-MOD-SE-S , VID: V01, SN: FOC23261UUC
! 
! NAME: "0/0/1", DESCR: "NCS5500 4 QSFP28 with 100G MacSeC MPA"
! PID: NC55-MPA-4H-S     , VID: V02, SN: FOC23470FXF
! 
! NAME: "HundredGigE0/0/1/0", DESCR: "Non-Cisco QSFP28 100G SR4 Pluggable Optics Module"
! PID: FTLC9558REPM      , VID: A1 , SN: X2LAN3C
! 
! NAME: "HundredGigE0/0/1/1", DESCR: "Non-Cisco QSFP28 100G SR4 Pluggable Optics Module"
! PID: FTLC9558REPM      , VID: A1 , SN: X2MALWT
! 
! NAME: "HundredGigE0/0/1/2", DESCR: "Non-Cisco QSFP28 100G LR4 Pluggable Optics Module"
! PID: QSFP28-100G-LR4   , VID: 1A , SN: KAEQ0054
! 
! NAME: "0/0/2", DESCR: "NCS5500 4 QSFP28 with 100G MacSeC MPA"
! PID: NC55-MPA-4H-S     , VID: V02, SN: FOC23470FZB
! 
! NAME: "HundredGigE0/0/2/0", DESCR: "Non-Cisco QSFP28 100G SR4 Pluggable Optics Module"
! PID: FTLC9558REPM      , VID: A1 , SN: X2MAHEH
! 
! NAME: "HundredGigE0/0/2/1", DESCR: "Non-Cisco QSFP28 100G SR4 Pluggable Optics Module"
! PID: FTLC9558REPM      , VID: A1 , SN: X2MANKY
! 
! NAME: "0/RP0", DESCR: "NC55A2 MOD Scale Route Processor Card"
! PID: NCS-55A2-MOD-SE-S , VID: V01, SN: FOC23261UUC
! 
! NAME: "TenGigE0/0/0/0", DESCR: "Cisco SFP+ 10G LR Pluggable Optics Module"
! PID: SFP-10G-LR        , VID: V02, SN: FNS164001XL
! 
! NAME: "Rack 0", DESCR: "NCS55A2 Fixed Scale Chassis"
! PID: NCS-55A2-MOD-SE-S , VID: V01, SN: FOC2327R2BE
! 
! NAME: "0/FT0", DESCR: "NCS 55A2 FW Fan Tray"
! PID: NC55-A2-FAN-FW    , VID: V01, SN: J331UFSFA
! 
! NAME: "0/FT1", DESCR: "NCS 55A2 FW Fan Tray"
! PID: NC55-A2-FAN-FW    , VID: V01, SN: J33194SFA
! 
! NAME: "0/FT2", DESCR: "NCS 55A2 FW Fan Tray"
! PID: NC55-A2-FAN-FW    , VID: V01, SN: J3314ASFA
! 
! NAME: "0/FT3", DESCR: "NCS 55A2 FW Fan Tray"
! PID: NC55-A2-FAN-FW    , VID: V01, SN: J332PPSFA
! 
! NAME: "0/FT4", DESCR: "NCS 55A2 FW Fan Tray"
! PID: NC55-A2-FAN-FW    , VID: V01, SN: J331COSFA
! 
! NAME: "0/FT5", DESCR: "NCS 55A2 FW Fan Tray"
! PID: NC55-A2-FAN-FW    , VID: V01, SN: J331WMSFA
! 
! NAME: "0/FT6", DESCR: "NCS 55A2 FW Fan Tray"
! PID: NC55-A2-FAN-FW    , VID: V01, SN: J331SDSFA
! 
! NAME: "0/FT7", DESCR: "NCS 55A2 FW Fan Tray"
! PID: NC55-A2-FAN-FW    , VID: V01, SN: J3311JSFA
! 
! NAME: "0/PM0", DESCR: "NCS 55A2 AC 1200W Power Supply Port-S Intake/Front-to-back"
! PID: NC55-1200W-ACFW   , VID: V01, SN: LIT24472KK5
! 
! NAME: "0/PM1", DESCR: "NCS 55A2 AC 1200W Power Supply Port-S Intake/Front-to-back"
! PID: NC55-1200W-ACFW   , VID: V01, SN: LIT24472KCN
! 
! --------------------------------------------------------------------------------
! 0/0/1             NC55-MPA-4H-S              OK                
! 0/0/2             NC55-MPA-4H-S              OK                
! 0/RP0/CPU0        NCS-55A2-MOD-SE-S(Active)  IOS XR RUN        NSHUT
! 0/RP0/NPU0        Slice                      UP                
! 0/FT0             NC55-A2-FAN-FW             OPERATIONAL       NSHUT
! 0/FT1             NC55-A2-FAN-FW             OPERATIONAL       NSHUT
! 0/FT2             NC55-A2-FAN-FW             OPERATIONAL       NSHUT
! 0/FT3             NC55-A2-FAN-FW             OPERATIONAL       NSHUT
! 0/FT4             NC55-A2-FAN-FW             OPERATIONAL       NSHUT
! 0/FT5             NC55-A2-FAN-FW             OPERATIONAL       NSHUT
! 0/FT6             NC55-A2-FAN-FW             OPERATIONAL       NSHUT
! 0/FT7             NC55-A2-FAN-FW             OPERATIONAL       NSHUT
! 0/PM0             NC55-1200W-ACFW            OPERATIONAL       NSHUT
! 0/PM1             NC55-1200W-ACFW            OPERATIONAL       NSHUT
hostname gw01-osa2
clock timezone JST Japan
logging facility local1
logging 172.25.132.8 vrf MGMT severity info port default
logging 172.25.132.9 vrf MGMT severity info port default
service timestamps log datetime localtime msec show-timezone
service timestamps debug datetime localtime msec show-timezone
logging events link-status software-interfaces
domain name ad.jp.local
domain lookup disable
radius-server timeout 2
radius-server retransmit disable
username admin
 group root-lr
 group cisco-support
 <secret hidden>
!
aaa group server radius MGMT-RADIUS
 vrf MGMT
 server-private 172.25.132.8 auth-port 1812 acct-port 1813
  key 7 02140A5A00
  timeout 2
  retransmit 1
 !
 server-private 172.25.132.9 auth-port 1812 acct-port 1813
  key 7 00161D070F
  timeout 2
  retransmit 1
 !
!
aaa authentication login SSH group MGMT-RADIUS local
aaa authentication login default local
vrf MGMT
 address-family ipv4 unicast
 !
!
line default
 login authentication SSH
 access-class ingress IPv4-ACL-MGMT
 session-timeout 10
 transport input ssh
!
snmp-server ifindex persist
snmp-server vrf MGMT
!
snmp-server community <configuration removed>
snmp-server contact sys-net-all@mail.rakuten.com
fpd auto-upgrade disable
ntp
 server vrf MGMT 172.25.130.10 prefer
 server vrf MGMT 172.25.130.20
 update-calendar
!
bfd
 multipath include location 0/0/CPU0
!
call-home
 service active
 contact smart-licensing
 profile CiscoTAC-1
  active
  destination transport-method email disable
  destination transport-method http
 !
!
hw-module tcam fib ipv4 scaledisable
ipv6 access-list IPv6-ACL-100
 1010 remark ###_ALLOW_ICMP_###
 1020 permit icmpv6 any any
 1030 remark ###_ALLOW_LINK_LOCAL_###
 1040 permit ipv6 fe80::/10 any
 1050 remark ###_ALLOW_TCP_ESTABLISHED_###
 1060 permit tcp any any established
 2010 remark ###_DENY_Special_Use_Prefix_Source_###
 2020 deny ipv6 2403:400::/32 any log
 2030 deny ipv6 host ::1 any log
 2040 deny ipv6 host :: any log
 2050 deny ipv6 ::ffff:0.0.0.0/96 any log
 2060 deny ipv6 ::/8 any log
 2070 deny ipv6 fec0::/10 any log
 2080 deny ipv6 2001:db8::/32 any log
 2090 deny ipv6 2403:401::/36 any log
 2510 remark ###_DENY_TCP_TELNET_###
 2520 deny tcp any any eq telnet log
 2530 remark ###_DENY_TCP_SNMP_###
 2540 deny tcp any any eq snmp log
 2550 remark ###_DENY_UDP_SNMP_###
 2560 deny udp any any eq snmp log
 3010 remark ###_ALLOW_TCP_BGP_###
 3020 permit tcp host 2001:380:0:2565::1 host 2001:380:0:2565::2 eq bgp
 3030 permit tcp host 2001:218:2000:5000::5a9 host 2001:218:2000:5000::5aa eq bgp
 3040 permit tcp host 2001:268:f702:105::1 host 2001:268:f702:105::2 eq bgp
 3050 permit tcp host 2001:240:bb41:1010::edfa host 2001:240:bb41:1010::cafe eq bgp
 3060 permit tcp 2001:de8:c::/64 host 2001:de8:c::2:3820:1 eq bgp
 3070 permit tcp host 2001:218:3000:5000::145 host 2001:218:3000:5000::146 eq bgp
 3080 permit tcp 2001:de8:8::/64 host 2001:de8:8::2:3820:2 eq bgp
 3090 permit tcp 2001:7fa:7:1::/64 host 2001:7fa:7:1:0:2:3820:1 eq bgp
 3100 permit tcp 2001:7fa:7:2::/64 host 2001:7fa:7:2:0:2:3820:1 eq bgp
 3110 permit tcp host 2001:218:3000:5000::3f5 host 2001:218:3000:5000::3f6 eq bgp
 3120 permit tcp 2001:de8:5:1::/64 host 2001:de8:5:1:0:2:3820:1 eq bgp
 3130 permit tcp 2001:de8:8::/64 host 2001:de8:8::2:3820:1 eq bgp
 3131 permit tcp host 2001:7fa:7:2223::edfa host 2001:7fa:7:2223::cafe eq bgp
 3132 permit tcp host 2001:218:2000:5000::3d9 host 2001:218:2000:5000::3da eq bgp
 3140 permit tcp host 240b:c010:115::8224:0:0 host 240b:c010:115::8224:0:1 eq bgp
 3150 permit tcp host 240b:c010:115::8225:0:0 host 240b:c010:115::8225:0:1 eq bgp
 3160 permit tcp host 240b:c010:115::8226:0:0 host 240b:c010:115::8226:0:1 eq bgp
 3170 permit tcp host 240b:c010:115::8227:0:0 host 240b:c010:115::8227:0:1 eq bgp
 3180 permit udp host 240b:c010:115::8224:0:0 host 240b:c010:115::8224:0:1 eq bfd
 3190 permit udp host 240b:c010:115::8225:0:0 host 240b:c010:115::8225:0:1 eq bfd
 3200 permit udp host 240b:c010:115::8226:0:0 host 240b:c010:115::8226:0:1 eq bfd
 3210 permit udp host 240b:c010:115::8227:0:0 host 240b:c010:115::8227:0:1 eq bfd
 3220 permit tcp host 240b:c010:105::712c:0:0 host 240b:c010:105::712c:0:1 eq bgp
 3230 permit tcp host 240b:c010:105::722c:0:0 host 240b:c010:105::722c:0:1 eq bgp
 3240 permit tcp host 240b:c010:105::712d:0:0 host 240b:c010:105::712d:0:1 eq bgp
 3250 permit tcp host 240b:c010:105::722d:0:0 host 240b:c010:105::722d:0:1 eq bgp
 3260 permit udp host 240b:c010:105::712c:0:0 host 240b:c010:105::712c:0:1 range bfd 3785
 3270 permit udp host 240b:c010:105::722c:0:0 host 240b:c010:105::722c:0:1 range bfd 3785
 3280 permit udp host 240b:c010:105::712d:0:0 host 240b:c010:105::712d:0:1 range bfd 3785
 3290 permit udp host 240b:c010:105::722d:0:0 host 240b:c010:105::722d:0:1 range bfd 3785
 3300 permit tcp host 2a07:4e40:f600:1001:: host 2a07:4e40:f600:1001::1 eq bgp
 3310 permit udp host 2a07:4e40:f600:1001:: host 2a07:4e40:f600:1001::1 range bfd 3785
 3320 permit tcp host 2a07:4e40:f600:1003:: host 2a07:4e40:f600:1003::1 eq bgp
 3330 permit udp host 2a07:4e40:f600:1003:: host 2a07:4e40:f600:1003::1 range bfd 3785
 3340 permit tcp host 2a07:4e40:f600:1005:: host 2a07:4e40:f600:1005::1 eq bgp
 3350 permit udp host 2a07:4e40:f600:1005:: host 2a07:4e40:f600:1005::1 range bfd 3785
 3360 permit tcp host 2a07:4e40:f600:1007:: host 2a07:4e40:f600:1007::1 eq bgp
 3370 permit udp host 2a07:4e40:f600:1007:: host 2a07:4e40:f600:1007::1 range bfd 3785
 3380 permit tcp host 240b:c020:115::8224:0:0 host 240b:c020:115::8224:0:1 eq bgp
 3390 permit tcp host 240b:c020:115::8225:0:0 host 240b:c020:115::8225:0:1 eq bgp
 3400 permit udp host 240b:c020:115::8224:0:0 host 240b:c020:115::8224:0:1 range bfd 3785
 3410 permit udp host 240b:c020:115::8225:0:0 host 240b:c020:115::8225:0:1 range bfd 3785
 3420 permit tcp host 2001:4860:1:1::2700 host 2001:4860:1:1::2701 eq bgp
 3421 permit tcp host 2403:400:100:6910::605b host 2403:400:100:6910::605a eq bgp
 3422 permit tcp host 2001:380:0:251d::1 host 2001:380:0:251d::2 eq bgp
 3423 permit tcp host 2403:400:100:6910::187 host 2403:400:100:6910::186 eq bgp
 3424 permit tcp host 2a07:4e40:f600:1008:: host 2a07:4e40:f600:1008::1 eq bgp
 3425 permit udp host 2a07:4e40:f600:1008:: host 2a07:4e40:f600:1008::1 range bfd 3785
 3426 permit tcp host 2a07:4e40:f600:1009:: host 2a07:4e40:f600:1009::1 eq bgp
 3427 permit udp host 2a07:4e40:f600:1009:: host 2a07:4e40:f600:1009::1 range bfd 3785
 4010 remark ###_ALLOW_FW_SEGMENTS_###
 4020 permit ipv6 any 2403:400:500:1754::/64
 4030 permit ipv6 any 2403:400:500:1762::/64
 4040 permit ipv6 any 2403:400:500:1768::/64
 4050 permit ipv6 any 2403:400:520:1760::/64
 4060 permit ipv6 any 2403:400:520:1766::/64
 4070 permit ipv6 any 2403:400:520:1772::/64
 4080 permit ipv6 any 2403:400:520:1773::/64
 4090 permit ipv6 any 2403:400:520:1775::/64
 4100 permit ipv6 any 2403:400:520:1776::/64
 4110 permit ipv6 any 2403:400:520:1777::/64
 4120 permit ipv6 any 2403:400:520:1778::/64
 4130 permit ipv6 any 2403:400:520:2627::/64
 4140 permit ipv6 any 2403:400:800:2003::/64
 4150 permit ipv6 any 2403:400:800:2024::/64
 4160 permit ipv6 any 2403:400:800:2027::/64
 4170 permit ipv6 any 2403:400:801:2338::/64
 4180 permit ipv6 any 2403:400:800:2510::/64
 4190 permit ipv6 any 2403:400:4313:1000::/52
 5010 remark ###_ALLOW_FW_SEGMENTS_FOR_CITD_###
 5020 permit ipv6 any 2403:400:ff00::/40
 5030 permit ipv6 any 2403:401::/36
 5040 permit ipv6 any 2403:401:500:999::/64
 50010 remark ###_ALLOW_JPE1D_IPV6_RANGE__###
 50020 permit ipv6 any 2403:400:4123:1000::/52
 50030 permit ipv6 any 2403:400:4122:1000::/52
 60010 remark ###_ALLOW_HTTP_AND_HTTPS_###
 60020 permit tcp any 2403:400::/32 eq www
 60030 permit tcp any 2403:400::/32 eq https
 61000 remark ###_ALLOW_EXTERNAL_DNS_###
 61010 permit tcp any 2403:400:803:105::/64
 61020 permit udp any 2403:400:803:105::/64 eq domain
 61030 permit udp any eq domain 2403:400:803:105::/64
 61040 permit tcp any 2403:400:e01:1::/64 eq domain
 61050 permit udp any 2403:400:e01:1::/64 eq domain
 61060 permit udp any eq domain 2403:400:e01:1::/64
 99998 remark ###_DENY_ANY_###
 99999 deny ipv6 any any log
!
ipv6 access-list IPv6-ACL-130
 1010 remark ###_ALLOW_ICMP_###
 1020 permit icmpv6 any any
 1030 remark ###_ALLOW_LINK_LOCAL_###
 1040 permit ipv6 fe80::/10 any
 2010 remark ###_DENY_MS_###
 2020 deny tcp any any eq 135
 2030 deny udp any any eq 135
 2040 deny tcp any any range 137 139
 2050 deny udp any any range netbios-ns netbios-ss
 2060 deny tcp any any eq 445
 3030 remark ###_ALLOW_FROM_Raktuen_###
 3040 permit ipv6 2403:400::/32 any
 3050 permit ipv6 2403:401::/36 any
 3060 permit ipv6 2403:401:500:999::/64 any
 4010 remark ###_ALLOW_FROM_TRANSIT_INTERFACE_###
 4020 permit ipv6 host 2001:380:0:2565::2 any
 4030 permit ipv6 host 2001:218:2000:5000::5aa any
 4040 permit ipv6 host 2001:268:f702:105::2 any
 4050 permit ipv6 host 2001:240:bb41:1010::cafe any
 4060 permit ipv6 host 2001:de8:c::2:3820:1 any
 4070 permit ipv6 host 2001:218:3000:5000::146 any
 4080 permit ipv6 host 2001:de8:5:1:0:2:3820:1 any
 4090 permit ipv6 host 2001:7fa:7:1:0:2:3820:1 any
 4100 permit ipv6 host 2001:218:3000:5000::3f6 any
 4130 permit ipv6 host 2001:7fa:7:2:0:2:3820:1 any
 4140 permit ipv6 host 240b:c010:115::8224:0:1 any
 4150 permit ipv6 host 240b:c010:115::8225:0:1 any
 4160 permit ipv6 host 240b:c010:115::8226:0:1 any
 4170 permit ipv6 host 240b:c010:115::8227:0:1 any
 4180 permit ipv6 host 240b:c010:105::712c:0:1 any
 4190 permit ipv6 host 240b:c010:105::722c:0:1 any
 4200 permit ipv6 host 240b:c010:105::712d:0:1 any
 4210 permit ipv6 host 240b:c010:105::722d:0:1 any
 4220 permit ipv6 host 2001:7fa:7:2223::cafe any
 4230 permit ipv6 host 2001:218:2000:5000::3da any
 4240 permit ipv6 host 2001:de8:8::2:3820:1 any
 4250 permit ipv6 host 2001:de8:8::2:3820:2 any
 4260 permit ipv6 host 2a07:4e40:f600:1001::1 any
 4270 permit ipv6 host 2a07:4e40:f600:1003::1 any
 4280 permit ipv6 host 2a07:4e40:f600:1005::1 any
 4290 permit ipv6 host 2a07:4e40:f600:1007::1 any
 4300 permit ipv6 host 240b:c020:115::8224:0:1 any
 4310 permit ipv6 host 240b:c020:115::8225:0:1 any
 4320 permit ipv6 host 2001:4860:1:1::2701 any
 4330 permit ipv6 host 2001:380:0:251d::2 any
 4340 permit ipv6 host 2a07:4e40:f600:1008::1 any
 4350 permit ipv6 host 2a07:4e40:f600:1009::1 any
 99998 remark ###_DENY_ANY_###
 99999 deny ipv6 any any
!
ipv6 access-list IPv6-ACL-MGMT
 99998 remark ### DENY ALL ###
 99999 deny ipv6 any any log
!
ipv4 access-list ACL-100
 140 deny ipv4 202.72.48.0 0.0.15.255 any log
 170 deny ipv4 192.168.0.0 0.0.255.255 any log
 180 deny ipv4 172.16.0.0 0.15.255.255 any log
 190 deny ipv4 10.0.0.0 0.255.255.255 any log
 200 deny ipv4 0.0.0.0 0.255.255.255 any log
 210 deny ipv4 127.0.0.0 0.255.255.255 any log
 220 deny ipv4 169.254.0.0 0.0.255.255 any log
 230 deny ipv4 192.0.2.0 0.0.0.255 any log
 240 deny ipv4 224.0.0.0 15.255.255.255 any log
 250 deny ipv4 198.51.100.0 0.0.0.255 any log
 260 deny ipv4 203.0.113.0 0.0.0.255 any log
 270 deny ipv4 100.64.0.0 0.63.255.255 any log
 280 deny ipv4 192.0.0.0 0.0.0.255 any log
 290 deny ipv4 198.18.0.0 0.1.255.255 any log
 300 deny ipv4 240.0.0.0 15.255.255.255 any log
 310 deny ipv4 host 255.255.255.255 any log
 320 deny ipv4 103.136.152.0 0.0.3.255 any log
 330 deny ipv4 202.223.52.0 0.0.3.255 any log
 370 remark ### RAKUTEN ASSIGNED EXTERNAL P2P ###
 374 permit icmp host 133.237.247.75 host 133.237.247.74
 375 permit tcp host 133.237.247.75 host 133.237.247.74 eq bgp
 376 permit icmp host 133.237.247.187 host 133.237.247.186
 377 permit tcp host 133.237.247.187 host 133.237.247.186 eq bgp
 400 deny ipv4 133.237.0.0 0.0.255.255 any log
 500 remark ### R-CARD KDC RANGE ###
 510 permit ipv4 any 133.237.30.0 0.0.0.7
 520 permit ipv4 any 133.237.30.8 0.0.0.3
 530 permit ipv4 any 133.237.30.16 0.0.0.7
 540 permit ipv4 any 133.237.30.24 0.0.0.3
 550 remark ### R-CARD FDC1 RANGE ###
 560 permit ipv4 any 133.237.130.80 0.0.0.15
 570 permit ipv4 any 133.237.130.96 0.0.0.7
 580 permit ipv4 any 133.237.247.200 0.0.0.3
 600 remark ### R-EDY FUK1 RANGE ###
 610 permit ipv4 any 133.237.130.0 0.0.0.63
 620 permit ipv4 any 133.237.130.64 0.0.0.15
 700 remark ### RCOM CLOUD RANGE ###
 710 permit ipv4 any 103.136.152.0 0.0.3.255
 720 permit ipv4 any 133.237.33.0 0.0.0.255
 730 permit ipv4 any 202.223.52.0 0.0.3.255
 800 remark ###_From_Internet_to_Datadock_###
 810 permit ipv4 any 103.87.176.0 0.0.3.255
 820 permit ipv4 any 157.185.192.0 0.0.63.255
 830 permit ipv4 any 103.81.144.0 0.0.3.255
 840 permit ipv4 any 193.114.0.0 0.0.31.255
 850 permit ipv4 any 219.100.84.0 0.0.3.255
 860 remark ###_CITD_JPE2_STG_RANGE_###
 865 permit ipv4 any 133.237.107.64 0.0.0.63
 870 remark ###_SLB_RANGE_slb03_slb04_###
 875 permit ipv4 any 133.237.188.0 0.0.0.255
 880 remark ###_JPE2_RAKUTEN_CARD_GB-NET_SEGMENT_###
 885 permit ipv4 any 133.237.107.128 0.0.0.7
 890 permit ipv4 any 133.237.107.136 0.0.0.3
 895 permit ipv4 any 133.237.107.144 0.0.0.7
 900 permit ipv4 any 133.237.107.152 0.0.0.3
 1000 remark ###_ALLOW_TCP_TELNET_###
 1010 permit tcp host 202.219.160.202 host 203.192.131.134 eq telnet
 1020 permit tcp host 202.219.160.202 host 203.192.131.226 eq telnet
 1030 permit tcp host 202.219.160.206 host 203.192.131.134 eq telnet
 1040 permit tcp host 202.219.160.206 host 203.192.131.226 eq telnet
 1050 permit tcp host 202.219.160.202 host 210.173.176.197 eq telnet
 1060 permit tcp host 202.219.160.206 host 210.173.176.197 eq telnet
 1070 permit tcp host 202.219.160.202 host 61.207.54.154 eq telnet
 1080 permit tcp host 202.219.160.206 host 61.207.54.154 eq telnet
 1090 permit tcp host 202.219.160.202 host 61.120.145.130 eq telnet
 1100 permit tcp host 202.219.160.206 host 61.120.145.130 eq telnet
 1110 remark ###_DENY_TCP_TELNET_###
 1120 deny tcp any any eq telnet log
 1130 remark ###_DENY_TCP_SNMP_###
 1140 deny tcp any any eq snmp log
 1150 remark ###_DENY_UDP_SNMP_###
 1160 deny udp any any eq snmp log
 1170 remark ###_ALLOW_TCP_BGP_###
 1171 permit tcp host 210.232.233.9 host 210.232.233.10 eq bgp
 1180 permit tcp host 203.192.131.133 host 203.192.131.134 eq bgp
 1190 permit tcp host 203.192.131.225 host 203.192.131.226 eq bgp
 1200 permit tcp 203.190.227.0 0.0.0.255 host 203.190.227.45 eq bgp
 1210 permit tcp host 202.219.160.201 host 202.219.160.202 eq bgp
 1220 permit tcp host 202.219.160.205 host 202.219.160.206 eq bgp
 1230 permit tcp host 61.207.54.153 host 61.207.54.154 eq bgp
 1240 permit tcp host 61.120.145.129 host 61.120.145.130 eq bgp
 1250 permit tcp 210.173.184.0 0.0.1.255 host 210.173.184.91 eq bgp
 1265 permit tcp 101.203.88.0 0.0.3.255 host 101.203.88.77 eq bgp
 1270 permit tcp host 202.232.9.9 host 202.232.9.10 eq bgp
 1271 permit tcp host 202.216.4.228 host 202.216.4.229 eq bgp
 1272 permit tcp host 202.216.4.230 host 202.216.4.231 eq bgp
 1273 permit udp host 202.216.4.228 host 202.216.4.229 range bfd 3785
 1274 permit udp host 202.216.4.230 host 202.216.4.231 range bfd 3785
 1276 permit tcp host 103.87.176.216 host 103.87.176.217 eq bgp
 1277 permit tcp host 103.87.176.218 host 103.87.176.219 eq bgp
 1278 permit tcp host 103.87.176.198 host 103.87.176.199 eq bgp
 1279 permit tcp host 103.87.176.194 host 103.87.176.195 eq bgp
 1281 permit tcp host 72.14.211.198 host 72.14.211.199 eq bgp
 1282 permit tcp host 104.241.192.206 host 104.241.192.207 eq bgp
 1283 permit udp host 104.241.192.206 host 104.241.192.207 range bfd 3785
 1284 permit tcp host 104.241.192.208 host 104.241.192.209 eq bgp
 1285 permit udp host 104.241.192.208 host 104.241.192.209 range bfd 3785
 1286 permit tcp host 104.241.192.192 host 104.241.192.193 eq bgp
 1287 permit tcp host 104.241.192.194 host 104.241.192.195 eq bgp
 1288 permit tcp host 104.241.192.196 host 104.241.192.197 eq bgp
 1289 permit tcp host 104.241.192.198 host 104.241.192.199 eq bgp
 1290 permit tcp host 106.185.22.33 host 106.185.22.34 eq bgp
 1291 permit tcp host 103.124.3.136 host 103.124.3.137 eq bgp
 1292 permit tcp host 103.124.3.138 host 103.124.3.139 eq bgp
 1293 permit tcp host 103.124.3.140 host 103.124.3.141 eq bgp
 1294 permit tcp host 103.124.3.142 host 103.124.3.143 eq bgp
 1295 permit udp host 103.124.3.136 host 103.124.3.137 range bfd 3785
 1296 permit udp host 103.124.3.138 host 103.124.3.139 range bfd 3785
 1297 permit udp host 103.124.3.140 host 103.124.3.141 range bfd 3785
 1298 permit udp host 103.124.3.142 host 103.124.3.143 range bfd 3785
 1299 permit tcp host 210.173.171.185 host 210.173.171.186 eq bgp
 1300 permit tcp host 185.69.128.240 host 185.69.128.241 eq bgp
 1301 permit tcp host 103.124.3.102 host 103.124.3.103 eq bgp
 1302 permit tcp host 103.124.3.104 host 103.124.3.105 eq bgp
 1303 permit tcp host 103.124.3.106 host 103.124.3.107 eq bgp
 1304 permit tcp host 103.124.3.108 host 103.124.3.109 eq bgp
 1305 permit udp host 103.124.3.102 host 103.124.3.103 eq bfd
 1306 permit udp host 103.124.3.104 host 103.124.3.105 eq bfd
 1307 permit udp host 103.124.3.106 host 103.124.3.107 eq bfd
 1308 permit udp host 103.124.3.108 host 103.124.3.109 eq bfd
 1309 permit tcp host 61.120.147.253 host 61.120.147.254 eq bgp
 1310 permit tcp host 185.69.128.242 host 185.69.128.243 eq bgp
 1311 permit tcp host 203.105.72.217 host 203.105.72.218 eq bgp
 1313 permit tcp 210.171.224.0 0.0.1.255 host 210.171.225.67 eq bgp
 1314 permit tcp 210.171.224.0 0.0.1.255 host 210.171.225.77 eq bgp
 1316 permit tcp host 117.103.177.89 host 117.103.177.90 eq bgp
 1317 permit tcp host 117.103.176.9 host 117.103.176.10 eq bgp
 1318 permit tcp 210.173.176.0 0.0.1.255 host 210.173.176.15 eq bgp
 1319 permit tcp host 208.76.14.223 host 202.72.48.240 eq bgp
 1320 remark ###_ALLOW_GRE_###
 1330 permit gre host 129.250.0.252 host 117.103.177.90
 1340 remark ###_ALLOW_TCP_ESTABLISHED_###
 1350 permit tcp any any established
 1360 remark ###_ALLOW_ICMP_###
 1370 permit icmp any any
 1900 remark ###_LIMITED_ATTACK_INCLUDE_FW_###
 1910 deny ipv4 77.72.85.0 0.0.0.255 any log
 3000 remark ###_ALLOW_VPN_SEGMENTS_###
 3010 permit esp any 133.237.2.0 0.0.0.255
 3020 permit udp any 133.237.2.0 0.0.0.255 eq isakmp
 3030 permit udp any 133.237.2.0 0.0.0.255 eq 4500
 3100 permit esp any 133.237.7.0 0.0.0.255
 3110 permit udp any 133.237.7.0 0.0.0.255 eq isakmp
 3120 permit udp any 133.237.7.0 0.0.0.255 eq 4500
 3130 permit gre host 202.147.1.125 133.237.7.0 0.0.0.255
 3140 permit esp host 13.112.121.35 host 133.237.247.35
 3150 permit udp host 13.112.121.35 host 133.237.247.35 eq isakmp
 3160 permit udp host 13.112.121.35 host 133.237.247.35 eq 4500
 3170 permit esp host 35.73.146.251 host 133.237.247.35
 3180 permit udp host 35.73.146.251 host 133.237.247.35 eq isakmp
 3190 permit udp host 35.73.146.251 host 133.237.247.35 eq 4500
 3200 remark ###_ALLOW_VPN_FROM_AWS_TO_EXFW_###
 3210 permit esp host 3.113.110.63 host 133.237.247.176
 3220 permit udp host 3.113.110.63 host 133.237.247.176 eq isakmp
 3230 permit udp host 3.113.110.63 host 133.237.247.176 eq 4500
 3240 permit esp host 3.114.155.156 host 133.237.247.176
 3250 permit udp host 3.114.155.156 host 133.237.247.176 eq isakmp
 3260 permit udp host 3.114.155.156 host 133.237.247.176 eq 4500
 3270 permit esp host 13.114.36.71 host 133.237.247.177
 3280 permit udp host 13.114.36.71 host 133.237.247.177 eq isakmp
 3290 permit udp host 13.114.36.71 host 133.237.247.177 eq 4500
 3300 permit esp host 52.68.106.223 host 133.237.247.177
 3310 permit udp host 52.68.106.223 host 133.237.247.177 eq isakmp
 3320 permit udp host 52.68.106.223 host 133.237.247.177 eq 4500
 3330 permit esp host 13.208.100.157 host 133.237.247.178
 3340 permit udp host 13.208.100.157 host 133.237.247.178 eq isakmp
 3350 permit udp host 13.208.100.157 host 133.237.247.178 eq 4500
 3360 permit esp host 13.208.156.116 host 133.237.247.178
 3370 permit udp host 13.208.156.116 host 133.237.247.178 eq isakmp
 3380 permit udp host 13.208.156.116 host 133.237.247.178 eq 4500
 3390 permit esp host 13.208.254.151 host 133.237.247.179
 3400 permit udp host 13.208.254.151 host 133.237.247.179 eq isakmp
 3410 permit udp host 13.208.254.151 host 133.237.247.179 eq 4500
 3420 permit esp host 15.152.230.126 host 133.237.247.179
 3430 permit udp host 15.152.230.126 host 133.237.247.179 eq isakmp
 3440 permit udp host 15.152.230.126 host 133.237.247.179 eq 4500
 4000 remark ###_ALLOW_FROM_ORACLE_TO_VPN_EXADATA_AMR_###
 4010 permit tcp host 141.146.226.6 host 133.237.2.1 eq ssh
 4020 permit tcp host 148.87.1.239 host 133.237.2.1 eq ssh
 4030 permit tcp 137.254.4.0 0.0.0.31 host 133.237.2.1 eq ssh
 4040 permit tcp 193.9.13.128 0.0.0.31 host 133.237.2.1 eq ssh
 4050 permit tcp 202.45.129.176 0.0.0.15 host 133.237.2.1 eq ssh
 4060 permit tcp 148.87.19.192 0.0.0.31 host 133.237.2.1 eq ssh
 4070 permit udp host 141.146.129.1 host 133.237.2.1 eq ntp
 4500 remark ###_ALLOW_MRAC_VDI_###
 4540 permit esp any 133.237.30.192 0.0.0.31
 4550 permit ahp any 133.237.30.192 0.0.0.31
 4560 permit ipv4 any 133.237.30.192 0.0.0.31
 5000 remark ###_ALLOW_FROM_MIS_###
 5010 permit ipv4 host 202.7.107.76 202.72.48.0 0.0.15.255
 5020 permit ipv4 host 202.7.102.97 202.72.48.0 0.0.15.255
 5050 permit ipv4 host 202.7.107.76 133.237.0.0 0.0.255.255
 5060 permit ipv4 host 202.7.102.97 133.237.0.0 0.0.255.255
 5070 remark ###_ALLOW_FROM_MIS_TO_MISC_DNS_###
 5130 remark ###_ALLOW_FROM_SS_DNS/5000_###
 5140 permit udp host 222.230.137.69 202.72.48.0 0.0.15.255 eq 5000
 5160 permit udp host 222.230.137.69 133.237.0.0 0.0.255.255 eq 5000
 5210 remark ###_ALLOW_FROM_SS_HTTP/5001_###
 5220 permit tcp host 222.230.137.69 202.72.48.0 0.0.15.255 eq 5001
 5240 permit tcp host 222.230.137.69 133.237.0.0 0.0.255.255 eq 5001
 5320 remark ###_ALLOW_IPv6_BBIX_###
 5330 permit ipv4 host 218.176.246.177 host 202.72.48.250
 6000 remark ###_LIMITED_ATTACK_###
 6010 deny ipv4 host 157.7.105.136 any log
 6020 deny ipv4 host 157.7.106.23 any log
 6030 deny tcp 75.101.128.0 0.0.127.255 host 133.237.48.88 eq https log
 6040 deny tcp 174.129.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6050 deny tcp 174.129.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6060 deny tcp 204.236.192.0 0.0.63.255 host 133.237.48.88 eq https log
 6070 deny tcp 184.73.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6080 deny tcp 184.73.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6090 deny tcp 184.72.128.0 0.0.127.255 host 133.237.48.88 eq www log
 6100 deny tcp 184.72.128.0 0.0.127.255 host 133.237.48.88 eq https log
 6110 deny tcp 184.72.64.0 0.0.63.255 host 133.237.48.88 eq www log
 6120 deny tcp 184.72.64.0 0.0.63.255 host 133.237.48.88 eq https log
 6130 deny tcp 50.16.0.0 0.1.255.255 host 133.237.48.88 eq www log
 6140 deny tcp 50.16.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6150 deny tcp 50.19.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6160 deny tcp 50.19.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6170 deny tcp 107.20.0.0 0.3.255.255 host 133.237.48.88 eq www log
 6180 deny tcp 107.20.0.0 0.3.255.255 host 133.237.48.88 eq https log
 6190 deny tcp 23.20.0.0 0.3.255.255 host 133.237.48.88 eq www log
 6200 deny tcp 23.20.0.0 0.3.255.255 host 133.237.48.88 eq https log
 6210 deny tcp 54.242.0.0 0.1.255.255 host 133.237.48.88 eq www log
 6220 deny tcp 54.242.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6230 deny tcp 54.234.0.0 0.1.255.255 host 133.237.48.88 eq www log
 6240 deny tcp 54.234.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6250 deny tcp 54.236.0.0 0.1.255.255 host 133.237.48.88 eq www log
 6260 deny tcp 54.236.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6270 deny tcp 54.224.0.0 0.1.255.255 host 133.237.48.88 eq www log
 6280 deny tcp 54.224.0.0 0.1.255.255 host 133.237.48.89 eq www log
 6290 deny tcp 54.224.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6300 deny tcp 54.226.0.0 0.1.255.255 host 133.237.48.88 eq www log
 6310 deny tcp 54.226.0.0 0.1.255.255 host 133.237.48.89 eq www log
 6320 deny tcp 54.226.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6330 deny tcp 54.208.0.0 0.1.255.255 host 133.237.48.88 eq www log
 6340 deny tcp 54.208.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6350 deny tcp 54.210.0.0 0.1.255.255 host 133.237.48.88 eq www log
 6360 deny tcp 54.210.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6370 deny tcp 54.221.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6380 deny tcp 54.221.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6390 deny tcp 54.221.0.0 0.0.255.255 host 133.237.48.89 eq https log
 6400 deny tcp 54.204.0.0 0.1.255.255 host 133.237.48.88 eq www log
 6410 deny tcp 54.204.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6420 deny tcp 54.196.0.0 0.1.255.255 host 133.237.48.88 eq www log
 6430 deny tcp 54.196.0.0 0.1.255.255 host 133.237.48.89 eq www log
 6440 deny tcp 54.196.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6450 deny tcp 54.198.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6460 deny tcp 54.198.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6470 deny tcp 54.80.0.0 0.7.255.255 host 133.237.48.88 eq www log
 6480 deny tcp 54.80.0.0 0.7.255.255 host 133.237.48.89 eq www log
 6490 deny tcp 54.80.0.0 0.7.255.255 host 133.237.48.88 eq https log
 6500 deny tcp 50.112.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6510 deny tcp 54.245.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6520 deny tcp 54.245.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6530 deny tcp 54.244.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6540 deny tcp 54.214.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6550 deny tcp 54.212.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6560 deny tcp 54.212.0.0 0.1.255.255 host 133.237.48.89 eq https log
 6570 deny tcp 54.218.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6580 deny tcp 54.218.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6590 deny tcp 54.200.0.0 0.1.255.255 host 133.237.48.88 eq www log
 6600 deny tcp 54.200.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6610 deny tcp 54.202.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6620 deny tcp 54.184.0.0 0.7.255.255 host 133.237.48.88 eq https log
 6630 deny tcp 54.184.0.0 0.7.255.255 host 133.237.48.89 eq https log
 6640 deny tcp 204.236.128.0 0.0.63.255 host 133.237.48.88 eq www log
 6650 deny tcp 184.72.0.0 0.0.63.255 host 133.237.48.88 eq www log
 6660 deny tcp 184.72.0.0 0.0.63.255 host 133.237.48.88 eq https log
 6670 deny tcp 50.18.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6680 deny tcp 50.18.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6690 deny tcp 184.169.128.0 0.0.127.255 host 133.237.48.88 eq https log
 6700 deny tcp 54.241.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6710 deny tcp 54.241.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6720 deny tcp 54.215.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6730 deny tcp 54.215.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6740 deny tcp 54.219.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6750 deny tcp 54.219.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6760 deny tcp 54.193.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6770 deny tcp 54.193.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6780 deny tcp 54.176.0.0 0.1.255.255 host 133.237.48.88 eq www log
 6790 deny tcp 54.176.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6800 deny tcp 54.183.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6810 deny tcp 54.183.0.0 0.0.255.255 host 133.237.48.89 eq www log
 6820 deny tcp 54.183.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6830 deny tcp 176.34.128.0 0.0.127.255 host 133.237.48.88 eq https log
 6840 deny tcp 54.246.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6850 deny tcp 54.246.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6860 deny tcp 54.216.0.0 0.1.255.255 host 133.237.48.88 eq www log
 6870 deny tcp 54.216.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6880 deny tcp 54.194.0.0 0.1.255.255 host 133.237.48.88 eq www log
 6890 deny tcp 54.194.0.0 0.1.255.255 host 133.237.48.88 eq https log
 6900 deny tcp 54.72.0.0 0.3.255.255 host 133.237.48.88 eq www log
 6910 deny tcp 54.72.0.0 0.3.255.255 host 133.237.48.88 eq https log
 6920 deny tcp 54.78.0.0 0.0.255.255 host 133.237.48.88 eq www log
 6930 deny tcp 54.78.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6940 deny tcp 175.41.128.0 0.0.63.255 host 133.237.48.88 eq https log
 6950 deny tcp 54.251.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6960 deny tcp 54.254.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6970 deny tcp 54.255.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6980 deny tcp 54.179.0.0 0.0.255.255 host 133.237.48.88 eq https log
 6990 deny tcp 175.41.192.0 0.0.63.255 host 133.237.48.88 eq www log
 7000 deny tcp 175.41.192.0 0.0.63.255 host 133.237.48.88 eq https log
 7010 deny tcp 46.51.224.0 0.0.31.255 host 133.237.48.88 eq www log
 7020 deny tcp 46.51.224.0 0.0.31.255 host 133.237.48.88 eq https log
 7030 deny tcp 176.32.64.0 0.0.31.255 host 133.237.48.88 eq www log
 7040 deny tcp 176.32.64.0 0.0.31.255 host 133.237.48.88 eq https log
 7050 deny tcp 103.4.8.0 0.0.7.255 host 133.237.48.88 eq www log
 7060 deny tcp 103.4.8.0 0.0.7.255 host 133.237.48.88 eq https log
 7070 deny tcp 176.34.0.0 0.0.63.255 host 133.237.48.88 eq www log
 7080 deny tcp 176.34.0.0 0.0.63.255 host 133.237.48.88 eq https log
 7090 deny tcp 54.248.0.0 0.1.255.255 host 133.237.48.88 eq www log
 7100 deny tcp 54.248.0.0 0.1.255.255 host 133.237.48.88 eq https log
 7110 deny tcp 54.250.0.0 0.0.255.255 host 133.237.48.88 eq www log
 7120 deny tcp 54.250.0.0 0.0.255.255 host 133.237.48.88 eq https log
 7130 deny tcp 54.238.0.0 0.0.255.255 host 133.237.48.88 eq www log
 7140 deny tcp 54.238.0.0 0.0.255.255 host 133.237.48.88 eq https log
 7150 deny tcp 54.199.0.0 0.0.255.255 host 133.237.48.88 eq www log
 7160 deny tcp 54.199.0.0 0.0.255.255 host 133.237.48.88 eq https log
 7170 deny tcp 54.178.0.0 0.0.255.255 host 133.237.48.88 eq www log
 7180 deny tcp 54.178.0.0 0.0.255.255 host 133.237.48.88 eq https log
 7190 deny tcp 54.95.0.0 0.0.255.255 host 133.237.48.88 eq www log
 7200 deny tcp 54.95.0.0 0.0.255.255 host 133.237.48.88 eq https log
 7210 deny ipv4 91.247.38.0 0.0.0.255 any log
 7220 deny tcp host 185.92.73.172 any range www 81 log
 7230 deny tcp host 185.92.73.172 any eq https log
 7240 deny ipv4 185.93.182.128 0.0.0.15 any log
 7250 deny ipv4 185.93.182.144 0.0.0.15 any log
 7260 deny ipv4 185.94.189.128 0.0.0.31 any log
 7270 deny ipv4 host 58.59.106.234 any log
 7280 deny ipv4 host 185.92.73.105 any log
 7290 deny ipv4 185.92.73.106 0.0.0.1 any log
 7300 deny ipv4 185.92.73.108 0.0.0.1 any log
 7310 deny ipv4 host 5.188.10.251 any log
 7320 deny ipv4 host 60.248.187.251 any log
 7330 deny ipv4 host 180.211.162.102 any log
 7340 deny ipv4 host 69.162.73.83 any log
 7350 deny ipv4 host 222.175.107.74 any log
 7360 deny ipv4 host 31.192.108.141 any log
 7370 deny ipv4 host 148.251.177.114 any log
 7380 deny ipv4 host 94.142.23.213 any log
 7390 deny ipv4 host 38.132.110.34 any log
 7400 deny ipv4 host 150.129.69.62 any log
 7410 deny ipv4 host 5.188.10.105 any log
 7420 deny ipv4 77.72.85.0 0.0.0.255 any log
 7430 deny ipv4 host 179.60.146.12 any log
 7440 deny ipv4 host 119.81.5.3 host 133.237.16.127 log
 7450 deny ipv4 host 119.81.5.3 133.237.16.128 0.0.0.1 log
 7460 deny ipv4 host 119.81.5.3 host 133.237.16.130 log
 7470 deny ipv4 host 108.61.127.38 any log
 7480 deny ipv4 host 89.248.168.17 any log
 7490 deny ipv4 host 5.188.86.156 any log
 7500 deny ipv4 host 185.222.210.57 any log
 7510 deny ipv4 host 125.211.216.56 any log
 7520 deny ipv4 host 185.96.210.192 any log
 7530 deny ipv4 host 35.232.178.241 any log
 7540 deny ipv4 host 91.90.44.21 any log
 7550 deny ipv4 host 221.229.207.65 any log
 7560 deny ipv4 host 122.136.134.163 any log
 7570 deny ipv4 host 58.82.203.41 any log
 7580 deny ipv4 host 217.61.23.111 any log
 7590 deny ipv4 host 89.238.154.241 any log
 7600 deny ipv4 host 119.97.159.70 any log
 7610 deny ipv4 host 211.185.153.75 any log
 7620 deny ipv4 host 94.23.249.210 any log
 7630 deny ipv4 host 213.183.53.219 any log
 7640 deny ipv4 host 109.200.230.144 any log
 7650 deny ipv4 host 185.232.64.161 any log
 7660 deny ipv4 host 185.10.68.163 any log
 7670 deny ipv4 host 23.225.141.70 any log
 7680 deny ipv4 139.99.118.0 0.0.0.255 any log
 7690 deny ipv4 45.146.165.0 0.0.0.255 any log
 7700 deny ipv4 167.114.41.0 0.0.0.255 any log
 7710 deny ipv4 149.56.154.0 0.0.0.255 any log
 7720 deny ipv4 45.195.133.0 0.0.0.255 any log
 7730 deny ipv4 149.56.180.0 0.0.0.255 any log
 7740 deny ipv4 host 179.60.146.9 any log
 7750 deny ipv4 host 185.232.64.32 any log
 7760 deny ipv4 host 104.244.76.210 any log
 7770 deny ipv4 host 87.228.198.126 any log
 7780 deny ipv4 host 176.121.14.175 any log
 7790 deny ipv4 host 157.7.106.95 any log
 7800 deny ipv4 host 150.95.9.160 any log
 7810 deny ipv4 host 150.60.48.10 any log
 7820 deny ipv4 host 157.7.106.92 any log
 7830 deny ipv4 host 60.12.220.149 any log
 7840 deny ipv4 host 176.121.14.176 any log
 7850 deny ipv4 host 176.121.14.177 any log
 7860 deny ipv4 host 176.121.14.178 any log
 7870 deny ipv4 host 176.121.14.179 any log
 7880 deny ipv4 host 176.121.14.180 any log
 7890 deny ipv4 host 176.121.14.181 any log
 7900 deny ipv4 host 176.121.14.183 any log
 7910 deny ipv4 host 176.121.14.184 any log
 7920 deny ipv4 host 176.121.14.186 any log
 7930 deny ipv4 host 176.121.14.187 any log
 7940 deny ipv4 host 176.121.14.188 any log
 7950 deny ipv4 host 176.121.14.189 any log
 7960 deny ipv4 host 176.121.14.198 any log
 7970 deny ipv4 host 66.240.205.34 any log
 7980 deny ipv4 host 5.8.55.40 any log
 7990 deny ipv4 host 37.58.58.231 any log
 8000 deny ipv4 host 185.81.157.219 any log
 8010 deny ipv4 host 183.90.240.22 any log
 8020 deny ipv4 host 175.21.98.54 any log
 8030 deny ipv4 host 183.91.80.98 any log
 8040 deny ipv4 host 210.224.185.216 any log
 8050 deny ipv4 host 79.253.46.45 any log
 8060 deny ipv4 host 218.4.90.211 any log
 8070 deny ipv4 host 45.254.253.157 any log
 8080 deny ipv4 host 217.233.109.249 any log
 8090 deny ipv4 host 104.200.153.88 any log
 8100 deny ipv4 host 27.115.124.6 any log
 8110 deny ipv4 host 27.115.124.70 any log
 8120 deny ipv4 host 175.21.104.199 any log
 8130 deny ipv4 host 1.165.68.218 any log
 8140 deny ipv4 host 34.97.113.185 any log
 8150 deny ipv4 host 201.244.0.35 any log
 8160 deny ipv4 host 96.44.140.110 any log
 8170 deny ipv4 host 185.77.248.6 any log
 8180 deny ipv4 host 125.64.94.213 any log
 8190 deny ipv4 host 60.191.38.77 any log
 8200 deny ipv4 host 175.21.120.178 any log
 8210 deny ipv4 host 175.21.177.66 any log
 8220 deny ipv4 host 175.21.121.170 any log
 8230 deny ipv4 host 175.21.117.242 any log
 8240 deny ipv4 host 175.21.120.89 any log
 8250 deny ipv4 host 175.21.121.237 any log
 8260 deny ipv4 host 175.21.176.176 any log
 8270 deny ipv4 host 175.21.96.170 any log
 8280 deny ipv4 host 175.21.98.230 any log
 8290 deny ipv4 host 5.101.0.209 any log
 8300 deny ipv4 host 61.219.11.153 any log
 8310 deny ipv4 host 193.57.40.38 any log
 8320 deny ipv4 host 141.98.80.95 any log
 8330 deny ipv4 host 111.241.168.227 any log
 8340 deny ipv4 host 143.244.140.89 any log
 8350 deny ipv4 host 194.163.149.72 any log
 8360 deny ipv4 host 195.181.247.34 any log
 8370 deny ipv4 host 167.99.65.138 any log
 8380 deny ipv4 host 82.102.28.107 any log
 8390 deny ipv4 host 102.133.237.250 any log
 8400 deny ipv4 host 40.112.129.217 any log
 8410 deny ipv4 host 195.54.160.135 any log
 8420 deny ipv4 host 45.227.255.149 any log
 8430 deny ipv4 host 45.227.255.227 any log
 8440 deny ipv4 host 195.54.160.21 any log
 8450 deny ipv4 host 47.144.33.160 any log
 8460 deny ipv4 host 93.174.93.91 any log
 8470 deny ipv4 host 104.143.83.241 any log
 8480 deny ipv4 host 103.152.132.120 any log
 8490 deny ipv4 host 111.88.17.166 any log
 8500 deny ipv4 host 41.215.163.133 any log
 8510 deny ipv4 host 176.113.115.214 any log
 8520 deny ipv4 host 193.27.228.27 any log
 8530 deny ipv4 host 175.141.244.167 any log
 8540 deny ipv4 host 176.113.115.89 any log
 8550 deny ipv4 host 193.27.229.26 any log
 8560 deny ipv4 host 91.241.19.235 any log
 8570 deny ipv4 host 37.187.156.120 any log
 8580 deny ipv4 host 91.241.19.84 any log
 8590 deny ipv4 host 104.168.246.44 any log
 8600 deny ipv4 host 218.208.110.162 any log
 8610 deny ipv4 host 180.253.46.67 any log
 8620 deny ipv4 host 190.2.133.224 any log
 8630 deny ipv4 host 141.98.83.108 any log
 8640 deny ipv4 host 178.128.178.79 any log
 8650 deny ipv4 host 170.187.230.208 any log
 8660 deny ipv4 host 193.58.127.3 any log
 8670 deny ipv4 45.150.206.152 0.0.0.3 any log
 8680 deny ipv4 host 45.93.201.104 any log
 8690 deny ipv4 host 164.68.112.178 any log
 8700 deny ipv4 host 118.101.251.248 any log
 8710 deny ipv4 host 45.135.232.66 any log
 8720 deny ipv4 host 95.123.41.94 any log
 8730 deny ipv4 host 95.211.100.165 any log
 8740 deny ipv4 host 95.211.100.150 any log
 8750 deny ipv4 185.234.216.0 0.0.3.255 any log
 8760 deny ipv4 host 34.107.60.155 any log
 8770 deny ipv4 host 168.119.106.211 any log
 8780 deny ipv4 host 34.107.97.217 any log
 8790 deny ipv4 host 45.114.141.29 any log
 8800 deny ipv4 host 114.6.41.65 any log
 8810 deny ipv4 host 183.81.127.149 any log
 8820 deny ipv4 host 104.238.177.98 any log
 8830 deny ipv4 host 34.89.159.209 any log
 8840 deny ipv4 host 159.69.53.204 any log
 8850 deny ipv4 host 2.57.122.97 any log
 8860 deny ipv4 host 173.212.217.89 any log
 8870 deny ipv4 host 35.195.56.81 any log
 8880 deny ipv4 host 167.86.110.121 any log
 8890 deny ipv4 host 35.246.226.11 any log
 8900 deny ipv4 45.227.253.0 0.0.0.255 any log
 8910 deny ipv4 host 193.138.218.224 any log
 8920 deny ipv4 host 116.213.43.216 any log
 8930 deny ipv4 host 143.198.96.150 any log
 8940 deny ipv4 host 185.193.91.250 any log
 8950 deny ipv4 host 185.151.29.236 any log
 8960 deny ipv4 host 192.53.115.235 any log
 8970 deny ipv4 host 192.228.139.90 any log
 8980 deny ipv4 host 139.59.20.236 any log
 8990 deny ipv4 host 45.79.202.31 any log
 9000 deny ipv4 host 80.2.150.110 any log
 9010 deny ipv4 host 128.199.93.52 any log
 9020 deny ipv4 host 18.221.78.93 any log
 9030 deny ipv4 host 128.199.129.115 any log
 9040 deny ipv4 host 103.166.253.106 any log
 9050 deny ipv4 host 103.200.74.81 any log
 9060 deny ipv4 host 159.65.20.105 any log
 9070 deny ipv4 host 18.184.21.57 any log
 9080 deny ipv4 host 192.198.92.2 any log
 9090 deny ipv4 host 104.171.119.208 any log
 9100 deny ipv4 host 104.248.57.149 any log
 9110 deny ipv4 host 223.149.179.174 any log
 9120 deny ipv4 host 45.61.146.242 any log
 9130 deny tcp host 54.248.140.115 host 133.237.62.6 eq www log
 9140 deny tcp host 54.248.140.115 host 133.237.62.6 eq https log
 9150 deny tcp host 54.250.205.76 host 133.237.62.6 eq www log
 9160 deny tcp host 54.250.205.76 host 133.237.62.6 eq https log
 9170 deny tcp host 61.125.131.71 host 133.237.62.6 eq www log
 9180 deny tcp host 61.125.131.71 host 133.237.62.6 eq https log
 9190 deny tcp host 54.248.140.115 host 133.237.61.105 eq www log
 9200 deny tcp host 54.248.140.115 host 133.237.61.105 eq https log
 9210 deny tcp host 54.250.205.76 host 133.237.61.105 eq www log
 9220 deny tcp host 54.250.205.76 host 133.237.61.105 eq https log
 9230 deny tcp host 61.125.131.71 host 133.237.61.105 eq www log
 9240 deny tcp host 61.125.131.71 host 133.237.61.105 eq https log
 9250 deny ipv4 45.146.166.0 0.0.0.255 any log
 9260 deny ipv4 45.155.205.0 0.0.0.255 any log
 9270 deny ipv4 host 137.184.25.161 any log
 9280 deny ipv4 45.146.164.0 0.0.0.255 any log
 9290 deny ipv4 host 197.239.4.0 any log
 9300 deny ipv4 host 36.255.45.142 any log
 9310 deny ipv4 host 103.212.120.43 any log
 9320 deny ipv4 host 192.254.69.238 any log
 9330 deny ipv4 host 194.163.173.129 any log
 9340 deny ipv4 host 45.224.92.5 any log
 9350 deny ipv4 host 212.102.39.144 any log
 9360 deny ipv4 host 18.193.55.132 any log
 9370 deny ipv4 host 103.231.172.42 any log
 9380 deny ipv4 host 185.128.41.50 any log
 9390 deny ipv4 host 27.159.92.181 any log
 9400 deny ipv4 host 35.189.19.57 any log
 9410 deny ipv4 host 89.187.182.32 any log
 9420 deny ipv4 host 103.194.184.34 any log
 9430 deny ipv4 host 159.223.81.193 any log
 9440 deny ipv4 host 36.255.44.199 any log
 9450 deny ipv4 host 92.202.165.59 any log
 9460 deny ipv4 host 111.59.85.209 any log
 9470 deny ipv4 host 113.98.224.68 any log
 9480 deny ipv4 host 1.179.247.182 any log
 9490 deny ipv4 host 164.52.53.163 any log
 9500 deny ipv4 host 170.210.45.163 any log
 9510 deny ipv4 host 175.6.210.66 any log
 9520 deny ipv4 host 223.111.180.119 any log
 9530 deny ipv4 host 46.105.95.220 any log
 9540 deny ipv4 host 86.109.208.194 any log
 9550 deny ipv4 host 167.71.197.134 any log
 9560 deny ipv4 host 176.111.173.139 any log
 9570 deny ipv4 host 193.169.252.158 any log
 9580 deny ipv4 host 193.169.252.166 any log
 9590 deny ipv4 host 193.169.252.245 any log
 9600 deny ipv4 host 42.118.154.187 any log
 9610 deny ipv4 host 5.135.106.49 any log
 9620 deny ipv4 host 209.141.47.28 any log
 9630 deny ipv4 host 61.219.11.151 any log
 9640 deny ipv4 host 142.93.165.199 any log
 9650 deny ipv4 host 164.90.164.112 any log
 9660 deny ipv4 host 164.92.252.4 any log
 9670 deny ipv4 host 144.126.222.71 any log
 9680 deny ipv4 host 167.71.200.226 any log
 9690 deny ipv4 host 167.71.204.23 any log
 9700 deny ipv4 host 167.71.207.169 any log
 9710 deny ipv4 host 68.183.188.48 any log
 9720 deny ipv4 host 118.68.227.77 any log
 9730 deny ipv4 host 3.145.102.83 any log
 9740 deny ipv4 host 42.118.73.166 any log
 9750 deny ipv4 host 83.143.86.62 any log
 9760 deny ipv4 host 158.247.219.83 any log
 9770 deny ipv4 host 192.46.226.186 any log
 9780 deny ipv4 host 43.246.208.209 any log
 9790 deny ipv4 host 42.118.89.251 any log
 9800 deny ipv4 host 161.97.122.174 any log
 9810 deny ipv4 host 193.108.115.130 any log
 9820 deny ipv4 host 170.187.185.108 any log
 9830 deny ipv4 host 128.199.79.162 any log
 9840 deny ipv4 host 159.223.46.223 any log
 9850 deny ipv4 host 209.97.162.246 any log
 9860 deny ipv4 host 109.74.204.123 any log
 9870 deny ipv4 host 172.105.87.91 any log
 9880 deny ipv4 host 178.79.148.229 any log
 9890 deny ipv4 host 45.33.101.246 any log
 9900 deny ipv4 host 194.156.98.40 any log
 9910 deny ipv4 host 198.1.68.177 any log
 9920 deny ipv4 host 45.150.64.123 any log
 9930 deny ipv4 host 5.252.23.100 any log
 9940 deny ipv4 host 45.155.204.146 any log
 9950 deny ipv4 host 91.242.229.23 any log
 9960 deny ipv4 host 143.92.38.130 any log
 9970 deny ipv4 host 213.226.123.30 any log
 9980 deny ipv4 host 195.3.221.30 any log
 9990 deny ipv4 host 94.177.118.56 any log
 10000 deny ipv4 host 193.106.191.48 any log
 10010 deny ipv4 host 207.244.242.246 any log
 10020 deny ipv4 host 103.178.237.132 any log
 10030 deny ipv4 host 185.7.214.104 any log
 10040 deny ipv4 host 20.2.209.79 any log
 10050 deny ipv4 host 66.42.41.213 any log
 10060 deny ipv4 host 45.67.231.32 any log
 10070 deny ipv4 host 3.83.80.125 any log
 10080 deny ipv4 host 148.66.4.210 any log
 10090 deny ipv4 host 185.122.204.36 any log
 10100 deny ipv4 host 192.155.89.181 any log
 10110 deny ipv4 host 3.113.180.100 any log
 10120 deny ipv4 host 3.238.137.0 any log
 10130 deny ipv4 host 3.238.137.10 any log
 10140 deny ipv4 host 3.238.137.11 any log
 10150 deny ipv4 host 3.238.137.12 any log
 10160 deny ipv4 host 3.238.137.13 any log
 10170 deny ipv4 host 34.227.115.219 any log
 10180 deny ipv4 host 45.88.106.134 any log
 10190 deny ipv4 host 157.245.200.184 any log
 10200 deny ipv4 host 167.172.83.251 any log
 10210 deny ipv4 host 159.223.47.23 any log
 10220 deny ipv4 host 159.65.166.70 any log
 10230 deny ipv4 host 165.22.70.218 any log
 10240 deny ipv4 host 165.227.152.146 any log
 10250 deny ipv4 host 167.71.184.46 any log
 10260 deny ipv4 host 45.55.37.107 any log
 10270 deny ipv4 host 157.245.206.99 any log
 10280 deny ipv4 host 167.172.83.249 any log
 10290 deny ipv4 host 167.172.83.250 any log
 10300 deny ipv4 host 117.213.184.56 any log
 10310 deny ipv4 host 185.163.127.85 any log
 10320 deny ipv4 host 128.199.125.232 any log
 10330 deny ipv4 host 157.245.242.90 any log
 10340 deny ipv4 host 31.192.105.81 any log
 10350 deny ipv4 host 49.36.182.178 any log
 10360 deny ipv4 host 129.151.155.226 any log
 10370 deny ipv4 host 167.71.212.115 any log
 10380 deny ipv4 host 185.7.214.117 any log
 10390 deny ipv4 host 138.197.204.166 any log
 10400 deny ipv4 host 159.89.135.175 any log
 10410 deny ipv4 host 159.89.137.228 any log
 10420 deny ipv4 host 165.227.58.125 any log
 10430 deny ipv4 any host 133.237.62.45 log
 10440 deny ipv4 host 52.15.98.150 any log
 10450 deny ipv4 host 8.3.29.133 any log
 10460 deny ipv4 host 95.111.241.172 any log
 10470 deny ipv4 host 161.97.96.177 any log
 10480 deny ipv4 host 43.243.192.51 any log
 10490 deny ipv4 host 103.195.7.102 any log
 10500 deny ipv4 host 152.89.196.211 any log
 10510 deny ipv4 host 172.105.128.131 any log
 10520 deny ipv4 host 173.255.232.210 any log
 10530 deny ipv4 host 173.255.232.78 any log
 10540 deny ipv4 host 45.79.153.59 any log
 10550 deny ipv4 host 49.36.26.174 any log
 10560 deny ipv4 host 193.47.61.60 any log
 10570 deny ipv4 host 85.31.44.156 any log
 10580 deny ipv4 host 193.57.137.122 any log
 10590 deny ipv4 host 185.250.148.198 any log
 10600 deny ipv4 host 57.128.132.197 any log
 10610 deny ipv4 host 209.141.37.88 any log
 10620 deny ipv4 host 91.207.183.130 any log
 10630 deny ipv4 host 173.44.55.179 any log
 10640 deny ipv4 host 103.225.196.57 any log
 10650 deny ipv4 host 72.10.163.250 any log
 10660 deny ipv4 host 20.244.37.150 any log
 10670 deny ipv4 host 118.107.46.131 any log
 10680 deny ipv4 host 176.29.98.217 any log
 10690 deny ipv4 host 38.54.27.42 any log
 10700 deny ipv4 host 91.240.118.135 any log
 10710 deny ipv4 host 173.255.244.239 any log
 10720 deny ipv4 host 192.142.226.5 any log
 10730 deny ipv4 host 83.97.73.89 any log
 10740 deny ipv4 host 163.172.167.69 any log
 10750 deny ipv4 host 102.130.112.157 any log
 10760 deny ipv4 host 107.175.111.199 any log
 10770 deny ipv4 host 195.201.207.208 any log
 10780 deny ipv4 host 213.32.39.39 any log
 10790 deny ipv4 host 213.32.39.40 any log
 10800 deny ipv4 host 213.32.39.41 any log
 10810 deny ipv4 host 213.32.39.42 any log
 10820 deny ipv4 host 213.32.39.43 any log
 10830 deny ipv4 host 213.32.39.44 any log
 10840 deny ipv4 host 213.32.39.45 any log
 10850 deny ipv4 host 50.19.48.59 any log
 10860 deny ipv4 host 79.137.196.27 any log
 10870 deny ipv4 host 79.137.203.156 any log
 10880 deny ipv4 host 45.138.51.65 any log
 10890 deny ipv4 host 194.163.191.42 any log
 10900 deny ipv4 host 45.83.244.10 any log
 10910 deny ipv4 host 89.163.231.156 any log
 10920 deny ipv4 host 154.12.240.212 any log
 10930 deny ipv4 host 185.234.72.114 any log
 10940 deny ipv4 host 89.163.150.226 any log
 10950 deny ipv4 host 89.163.150.227 any log
 10960 deny ipv4 host 213.109.202.66 any log
 10970 deny ipv4 host 103.110.33.164 any log
 10980 deny ipv4 host 103.95.196.149 any log
 10990 deny ipv4 host 51.158.64.240 any log
 11000 deny ipv4 host 39.50.239.110 any log
 11010 deny ipv4 host 45.15.126.18 any log
 11020 deny ipv4 host 103.145.58.53 any log
 11030 deny ipv4 host 172.105.216.226 any log
 11040 deny ipv4 host 158.247.240.76 any log
 11050 deny ipv4 host 38.180.15.161 any log
 11060 deny ipv4 host 38.60.212.31 any log
 11070 deny ipv4 any 133.237.188.248 0.0.0.7 log
 11080 deny ipv4 host 161.35.140.213 any log
 11090 deny ipv4 host 38.54.16.230 any log
 11100 deny ipv4 host 66.111.61.142 any log
 11110 deny ipv4 host 66.111.61.143 any log
 11120 deny ipv4 host 31.41.244.85 any log
 11130 deny ipv4 host 185.224.128.191 any log
 11140 deny ipv4 host 119.8.104.249 any log
 11150 deny ipv4 host 192.99.168.149 any log
 11160 deny ipv4 host 142.171.193.6 any log
 11170 deny ipv4 host 154.12.229.4 any log
 11180 deny ipv4 host 212.47.240.153 any log
 11190 deny ipv4 host 107.175.91.198 any log
 11200 deny ipv4 host 163.172.137.212 any log
 11210 deny ipv4 host 51.15.213.83 any log
 11220 deny ipv4 host 163.172.190.126 any log
 11230 deny ipv4 host 107.172.6.169 any log
 11240 deny ipv4 host 142.44.160.96 any log
 11250 deny ipv4 host 51.15.140.60 any log
 11260 deny ipv4 host 31.42.184.161 any log
 11270 deny ipv4 host 223.178.86.34 any log
 11280 deny ipv4 host 142.93.209.80 any log
 11290 deny ipv4 host 202.148.188.228 any log
 11300 deny ipv4 host 104.248.29.24 any log
 11310 deny ipv4 host 46.102.174.25 any log
 11320 deny ipv4 host 45.144.113.28 any log
 11330 deny ipv4 host 103.101.58.227 any log
 11340 deny ipv4 host 45.77.101.153 any log
 11350 deny ipv4 host 45.32.48.54 any log
 11360 deny ipv4 host 5.189.132.46 any log
 11370 deny ipv4 host 109.123.237.109 any log
 11380 deny ipv4 host 134.122.186.31 any log
 11390 deny ipv4 host 195.154.208.100 any log
 11400 deny ipv4 host 195.154.208.101 any log
 11410 deny ipv4 host 195.154.208.98 any log
 11420 deny ipv4 host 195.154.208.99 any log
 11430 deny ipv4 host 163.172.77.100 any log
 11440 deny ipv4 host 51.15.162.34 any log
 11450 deny ipv4 host 51.159.54.165 any log
 11460 deny ipv4 host 103.11.218.1 any log
 11470 deny ipv4 host 103.11.218.5 any log
 11480 deny ipv4 host 103.11.218.6 any log
 11490 deny ipv4 host 103.120.170.101 any log
 11500 deny ipv4 host 103.120.170.116 any log
 11510 deny ipv4 host 103.120.170.117 any log
 11520 deny ipv4 host 103.120.170.118 any log
 11530 deny ipv4 host 103.120.170.93 any log
 11540 deny ipv4 host 103.120.170.95 any log
 11550 deny ipv4 host 103.121.91.244 any log
 11560 deny ipv4 host 103.157.28.103 any log
 11570 deny ipv4 host 104.28.221.205 any log
 11580 deny ipv4 host 107.172.62.104 any log
 11590 deny ipv4 host 107.174.68.244 any log
 11600 deny ipv4 host 115.42.60.214 any log
 11610 deny ipv4 host 13.57.14.168 any log
 11620 deny ipv4 host 136.113.99.225 any log
 11630 deny ipv4 host 136.115.68.69 any log
 11640 deny ipv4 host 136.116.126.191 any log
 11650 deny ipv4 host 136.116.229.134 any log
 11660 deny ipv4 host 139.59.136.184 any log
 11670 deny ipv4 host 142.93.37.239 any log
 11680 deny ipv4 host 149.102.243.16 any log
 11690 deny ipv4 host 157.245.103.95 any log
 11700 deny ipv4 host 157.245.105.107 any log
 11710 deny ipv4 host 157.245.220.39 any log
 11720 deny ipv4 host 159.65.44.159 any log
 11730 deny ipv4 host 161.123.130.107 any log
 11740 deny ipv4 host 170.205.30.84 any log
 11750 deny ipv4 host 172.96.140.124 any log
 11760 deny ipv4 host 18.138.229.116 any log
 11770 deny ipv4 host 187.87.249.187 any log
 11780 deny ipv4 host 192.175.142.10 any log
 11790 deny ipv4 host 192.175.142.150 any log
 11800 deny ipv4 host 192.175.142.157 any log
 11810 deny ipv4 host 192.175.142.34 any log
 11820 deny ipv4 host 192.210.228.190 any log
 11830 deny ipv4 host 193.203.205.17 any log
 11840 deny ipv4 host 193.36.119.27 any log
 11850 deny ipv4 host 194.246.84.39 any log
 11860 deny ipv4 host 194.85.249.249 any log
 11870 deny ipv4 host 195.201.169.60 any log
 11880 deny ipv4 host 198.46.234.28 any log
 11890 deny ipv4 host 206.81.24.74 any log
 11900 deny ipv4 host 209.160.115.3 any log
 11910 deny ipv4 host 213.21.239.4 any log
 11920 deny ipv4 host 221.148.108.52 any log
 11930 deny ipv4 host 23.226.136.107 any log
 11940 deny ipv4 host 27.74.251.56 any log
 11950 deny ipv4 host 31.57.38.244 any log
 11960 deny ipv4 host 32.223.150.236 any log
 11970 deny ipv4 host 38.47.109.66 any log
 11980 deny ipv4 host 43.201.30.50 any log
 11990 deny ipv4 host 45.150.65.40 any log
 12000 deny ipv4 host 45.61.157.12 any log
 12010 deny ipv4 host 47.242.198.228 any log
 12020 deny ipv4 host 5.199.174.151 any log
 12030 deny ipv4 host 5.34.209.57 any log
 12040 deny ipv4 host 50.114.28.123 any log
 12050 deny ipv4 host 62.169.23.180 any log
 12060 deny ipv4 host 64.225.10.164 any log
 12070 deny ipv4 host 64.225.75.246 any log
 12080 deny ipv4 host 80.89.237.194 any log
 12090 deny ipv4 host 94.156.148.116 any log
 12100 deny ipv4 host 95.214.52.170 any log
 12110 deny ipv4 host 101.32.180.17 any log
 15000 remark ### GeoACL Whitelist ###
 15010 permit tcp host 124.93.222.26 any eq www
 15020 permit tcp host 122.152.146.68 any eq www
 15030 permit tcp host 219.149.12.136 any eq www
 15040 permit tcp host 222.33.68.117 any eq www
 15050 permit tcp host 210.83.161.176 any eq www
 15060 permit tcp host 61.136.1.33 any eq www
 15070 permit tcp host 61.136.1.12 any eq www
 15080 permit tcp host 60.247.94.22 any eq www
 15090 permit tcp host 60.247.94.26 any eq www
 15100 permit tcp host 124.93.222.26 any eq https
 15110 permit tcp host 122.152.146.68 any eq https
 15120 permit tcp host 219.149.12.136 any eq https
 15130 permit tcp host 222.33.68.117 any eq https
 15140 permit tcp host 210.83.161.176 any eq https
 15150 permit tcp host 61.136.1.33 any eq https
 15160 permit tcp host 61.136.1.12 any eq https
 15170 permit tcp host 60.247.94.22 any eq https
 15180 permit tcp host 60.247.94.26 any eq https
 15190 permit tcp host 210.83.222.80 any eq www
 15200 permit tcp host 210.83.222.80 any eq https
 15210 permit tcp host 221.6.25.194 any eq www
 15220 permit tcp host 58.240.47.242 any eq www
 15230 permit tcp host 58.213.92.99 any eq www
 15240 permit tcp host 221.6.25.194 any eq https
 15250 permit tcp host 58.240.47.242 any eq https
 15260 permit tcp host 58.213.92.99 any eq https
 15270 permit tcp host 118.103.28.66 any eq www
 15280 permit tcp host 118.103.28.66 any eq https
 15290 permit tcp host 61.152.65.106 any eq www
 15300 permit tcp host 61.152.65.106 any eq https
 15390 permit tcp host 58.157.42.121 any eq www
 15400 permit tcp host 58.157.42.121 any eq https
 15410 permit tcp host 210.83.210.214 any eq www
 15420 permit tcp host 210.83.210.214 any eq https
 15430 permit tcp host 183.17.1.96 any eq www
 15440 permit tcp host 183.17.1.96 any eq https
 15450 permit tcp host 112.74.64.224 any eq www
 15460 permit tcp host 112.74.64.224 any eq https
 15470 permit tcp 219.77.206.0 0.0.0.255 any eq www
 15480 permit tcp 219.77.206.0 0.0.0.255 any eq https
 15490 permit tcp host 123.177.21.136 any eq www
 15500 permit tcp host 123.177.21.136 any eq https
 15510 permit tcp host 123.177.21.190 any eq www
 15520 permit tcp host 123.177.21.190 any eq https
 15530 permit tcp host 116.231.234.196 any eq www
 15540 permit tcp host 116.231.234.196 any eq https
 15550 permit tcp host 116.232.21.165 any eq www
 15560 permit tcp host 116.232.21.165 any eq https
 15570 permit tcp host 121.34.160.241 any eq www
 15580 permit tcp host 121.34.160.241 any eq https
 15590 permit tcp host 112.5.236.4 any eq www
 15600 permit tcp host 112.5.236.4 any eq https
 15610 permit tcp host 101.110.51.226 any eq www
 15620 permit tcp host 101.110.51.226 any eq https
 59000 remark ###_ALLOW_FW_SEGMENTS_###
 59010 permit ipv4 any 202.72.49.80 0.0.0.7
 59020 permit ipv4 any 202.72.59.0 0.0.0.255
 59030 permit ipv4 any 133.237.4.0 0.0.3.255
 59040 permit ipv4 any 133.237.8.0 0.0.7.255
 59050 permit ipv4 any 202.72.56.0 0.0.0.15
 59060 permit ipv4 any 202.72.56.16 0.0.0.15
 59070 permit ipv4 any 202.72.56.32 0.0.0.15
 59080 permit ipv4 any 133.237.7.0 0.0.0.255
 59100 permit ipv4 any 133.237.30.224 0.0.0.31
 59110 permit ipv4 any 133.237.44.0 0.0.0.255
 59120 permit ipv4 any 133.237.30.160 0.0.0.31
 59130 permit ipv4 any 133.237.42.128 0.0.0.127
 59140 permit ipv4 any 202.72.56.128 0.0.0.127
 59150 permit ipv4 any 133.237.56.0 0.0.3.255
 59160 permit ipv4 any 133.237.30.64 0.0.0.63
 59170 permit ipv4 any 133.237.43.0 0.0.0.255
 59180 permit ipv4 any 133.237.41.0 0.0.0.255
 59190 permit ipv4 any 133.237.30.128 0.0.0.7
 59200 permit esp any 133.237.30.128 0.0.0.7
 59210 permit ipv4 any 133.237.92.0 0.0.0.255
 59220 permit ipv4 any 133.237.93.0 0.0.0.255
 59230 permit ipv4 any 133.237.78.0 0.0.0.255
 59240 permit ipv4 any 133.237.32.16 0.0.0.15
 59250 permit ipv4 any 133.237.77.0 0.0.0.255
 59260 permit ipv4 any 133.237.76.0 0.0.0.255
 59270 permit ipv4 any 133.237.87.0 0.0.0.255
 59280 permit ipv4 any 133.237.82.0 0.0.0.255
 59290 permit ipv4 any 133.237.162.96 0.0.0.31
 59300 permit ipv4 any 133.237.162.128 0.0.0.31
 59310 permit ipv4 any 133.237.100.0 0.0.0.255
 59320 permit ipv4 any 133.237.101.0 0.0.0.255
 59330 permit ipv4 any 133.237.106.0 0.0.0.31
 59340 permit ipv4 any 133.237.106.224 0.0.0.15
 59350 permit ipv4 any 133.237.89.80 0.0.0.15
 59360 permit ipv4 any 133.237.89.0 0.0.0.31
 59370 permit ipv4 any 133.237.138.32 0.0.0.31
 59380 permit ipv4 any 133.237.138.64 0.0.0.31
 59390 permit ipv4 any 133.237.91.32 0.0.0.31
 59400 permit ipv4 any 133.237.91.64 0.0.0.31
 59410 permit ipv4 any 133.237.106.240 0.0.0.15
 59420 permit ipv4 any 133.237.106.32 0.0.0.31
 59430 permit ipv4 any 133.237.107.0 0.0.0.15
 59440 permit ipv4 any 133.237.107.16 0.0.0.15
 59450 permit ipv4 any 133.237.107.160 0.0.0.31
 59460 permit ipv4 any 133.237.107.48 0.0.0.15
 59470 permit ipv4 any 133.237.114.0 0.0.0.31
 59480 permit ipv4 any 133.237.114.112 0.0.0.7
 59490 permit ipv4 any 133.237.114.32 0.0.0.31
 59500 permit ipv4 any 133.237.114.80 0.0.0.15
 59510 permit ipv4 any 133.237.114.96 0.0.0.15
 59520 permit ipv4 any 133.237.138.0 0.0.0.31
 59530 permit ipv4 any 133.237.138.112 0.0.0.15
 59540 permit ipv4 any 133.237.138.128 0.0.0.31
 59550 permit ipv4 any 133.237.138.192 0.0.0.63
 59560 permit ipv4 any 133.237.138.96 0.0.0.15
 59570 permit ipv4 any 133.237.141.0 0.0.0.127
 59580 permit ipv4 any 133.237.158.0 0.0.0.31
 59590 permit ipv4 any 133.237.158.128 0.0.0.15
 59600 permit ipv4 any 133.237.158.48 0.0.0.15
 59610 permit ipv4 any 133.237.158.64 0.0.0.31
 59620 permit ipv4 any 133.237.158.96 0.0.0.31
 59630 permit ipv4 any 133.237.162.0 0.0.0.31
 59640 permit ipv4 any 133.237.162.32 0.0.0.31
 59650 permit ipv4 any 133.237.71.0 0.0.0.31
 59660 permit ipv4 any 133.237.71.64 0.0.0.7
 59670 permit ipv4 any 133.237.89.96 0.0.0.15
 59680 permit ipv4 any 133.237.141.128 0.0.0.31
 59690 permit ipv4 any 133.237.141.160 0.0.0.31
 59700 permit ipv4 any 133.237.194.0 0.0.0.31
 59710 permit ipv4 any 133.237.194.32 0.0.0.15
 59720 permit ipv4 any 133.237.167.128 0.0.0.63
 59730 permit ipv4 any 133.237.167.192 0.0.0.63
 59740 permit ipv4 any 133.237.98.0 0.0.0.127
 59750 permit ipv4 any 133.237.98.128 0.0.0.127
 60000 remark ###_ALLOW_HTTP_AND_HTTPS_###
 60010 permit tcp any 202.72.48.0 0.0.15.255 eq www
 60020 permit tcp any 202.72.48.0 0.0.15.255 eq https
 60050 permit tcp any 133.237.0.0 0.0.255.255 eq www
 60060 permit tcp any 133.237.0.0 0.0.255.255 eq https
 61000 remark ###_ALLOW_PAAS_FW_CONTROL_IP_###
 61010 permit ipv4 any 202.72.63.192 0.0.0.31
 61020 permit ipv4 any host 202.72.63.19
 61030 permit ipv4 any 202.72.61.0 0.0.0.255
 61040 permit ipv4 any host 202.72.63.20
 61100 remark ###_ALLOW_SMTP_VIP###
 61110 permit tcp any host 202.72.51.122 eq smtp
 61180 permit tcp any host 202.72.54.37 eq smtp
 61190 permit tcp any host 202.72.54.176 eq smtp
 61200 permit tcp any host 202.72.55.6 eq smtp
 61210 permit tcp any host 202.72.54.3 eq smtp
 61220 permit tcp any host 202.72.54.243 eq smtp
 61230 permit tcp any host 133.237.72.50 eq smtp
 61240 permit tcp any host 133.237.60.189 eq smtp
 61250 permit tcp any host 133.237.72.45 eq smtp
 61540 permit tcp any host 133.237.17.105 eq smtp
 61550 permit tcp any host 133.237.16.217 eq smtp
 61600 permit tcp any host 133.237.48.14 eq smtp
 61620 permit tcp any host 133.237.48.16 eq smtp
 61650 permit tcp any host 133.237.48.18 eq smtp
 61660 permit tcp any host 133.237.48.23 eq smtp
 61670 permit tcp any host 133.237.20.1 eq smtp
 61690 permit tcp any host 133.237.48.18 eq 587
 61700 permit tcp any host 133.237.17.68 eq 587
 61710 permit tcp any host 133.237.17.69 eq smtp
 61720 permit tcp any host 133.237.17.67 eq smtp
 61750 permit tcp any host 133.237.48.181 eq smtp
 61760 permit tcp any host 133.237.48.234 eq smtp
 61770 permit tcp any host 133.237.49.120 eq smtp
 61780 permit tcp any host 133.237.49.121 eq smtp
 61790 permit tcp any host 133.237.49.145 eq smtp
 61800 permit tcp any host 133.237.56.31 eq smtp
 61810 permit tcp any host 133.237.56.32 eq smtp
 61820 permit tcp any host 133.237.56.33 eq smtp
 61830 permit tcp any host 133.237.56.34 eq smtp
 61840 permit tcp any host 133.237.56.35 eq smtp
 61850 permit tcp any host 133.237.56.36 eq smtp
 61860 permit tcp any host 133.237.56.37 eq smtp
 61870 permit tcp any host 133.237.56.38 eq smtp
 61880 permit tcp any host 133.237.56.45 eq smtp
 61890 permit tcp any host 133.237.60.71 eq smtp
 61900 permit tcp any host 133.237.56.17 eq smtp
 61920 permit tcp any host 133.237.56.77 eq smtp
 61930 permit tcp any host 133.237.56.78 eq smtp
 61940 permit tcp any host 133.237.72.23 eq smtp
 61950 permit tcp any host 133.237.56.111 eq smtp
 61960 permit tcp any host 133.237.56.112 eq smtp
 61970 permit tcp any host 133.237.60.214 eq smtp
 61980 permit tcp any host 133.237.56.90 eq smtp
 61990 permit tcp any host 133.237.48.32 eq 587
 62000 permit tcp any host 133.237.48.38 eq smtp
 62010 permit tcp any host 133.237.62.75 eq smtp
 62030 permit tcp any host 133.237.63.160 eq smtp
 62050 permit tcp any host 133.237.60.24 eq smtp
 62060 permit tcp any host 133.237.60.19 eq smtp
 62070 permit tcp any host 133.237.60.233 eq smtp
 62080 remark
 62090 permit tcp any host 133.237.72.11 eq smtp
 62100 permit tcp any host 133.237.72.16 eq smtp
 62110 permit tcp any host 133.237.72.13 eq smtp
 62120 permit tcp any host 133.237.72.53 eq smtp
 62130 permit tcp any host 133.237.72.15 eq smtp
 62140 permit tcp any host 133.237.72.2 eq smtp
 62150 remark ###TO_CONNECT_NEW_SLB_FROM_OUTSIDE_###
 62160 permit tcp any host 133.237.72.1 eq smtp
 62170 remark ###ALLOW_PORT_587_###
 62180 permit tcp any host 133.237.72.12 eq 587
 62190 permit tcp any host 133.237.72.14 eq 587
 62200 remark
 62210 permit tcp any host 133.237.72.10 eq smtp
 62220 remark
 62230 permit ipv4 host 122.103.239.219 host 133.237.160.4
 62240 permit ipv4 host 122.103.239.219 host 133.237.160.6
 62250 permit ipv4 host 122.103.239.219 host 133.237.160.5
 62260 permit ipv4 host 122.103.239.219 host 133.237.160.1
 62270 permit ipv4 host 122.103.239.219 host 133.237.160.2
 62280 permit ipv4 host 122.103.239.219 host 133.237.160.3
 62290 permit ipv4 host 122.103.239.220 host 133.237.160.4
 62300 permit ipv4 host 122.103.239.220 host 133.237.160.6
 62310 permit ipv4 host 122.103.239.220 host 133.237.160.5
 62320 permit ipv4 host 122.103.239.220 host 133.237.160.1
 62330 permit ipv4 host 122.103.239.220 host 133.237.160.2
 62340 permit ipv4 host 122.103.239.220 host 133.237.160.3
 63000 remark ###_ALLOW_AUTH_VIP###
 63010 permit tcp any host 202.72.51.122 eq ident
 63260 permit tcp any host 133.237.49.120 eq ident
 63270 permit tcp any host 133.237.49.121 eq ident
 63280 permit tcp any host 133.237.49.145 eq ident
 65100 remark ###_ALLOW_FTP_###
 65110 permit tcp any host 202.72.54.200 eq ftp
 65120 permit tcp any host 202.72.54.200 range 1024 65535
 65130 permit tcp any host 202.72.54.238 eq ftp
 65140 permit tcp any host 202.72.54.238 range 1024 65535
 65150 permit tcp any host 202.72.54.239 eq ftp
 65160 permit tcp any host 202.72.54.239 range 1024 65535
 65240 permit tcp any host 202.72.54.17 eq ftp
 65250 permit tcp any host 202.72.54.17 range 1024 65535
 65340 permit tcp any host 133.237.16.141 range ftp-data ftp
 65350 permit tcp any host 133.237.16.141 range 1024 65535
 65360 permit tcp any host 133.237.16.142 range ftp-data ftp
 65370 permit tcp any host 133.237.16.142 range 1024 65535
 65380 permit tcp any host 133.237.16.143 range ftp-data ftp
 65390 permit tcp any host 133.237.16.143 range 1024 65535
 65420 permit tcp any host 133.237.56.70 eq ftp
 65430 permit tcp any host 133.237.56.70 range 10001 10500
 65440 permit tcp any host 133.237.61.62 eq ftp
 65450 permit tcp any host 133.237.61.62 range 1024 65535
 65460 permit tcp any host 133.237.61.63 eq ftp
 65470 permit tcp any host 133.237.61.63 range 1024 65535
 65480 permit tcp any host 133.237.56.70 eq 2222
 65490 permit tcp any host 133.237.61.63 eq ssh
 66000 remark ###_VPN-RANGE_###
 66010 permit esp any 133.237.111.128 0.0.0.15
 66020 permit udp any 133.237.111.128 0.0.0.15 eq isakmp
 66030 permit udp any 133.237.111.128 0.0.0.15 eq 4500
 66040 permit esp any 133.237.111.144 0.0.0.7
 66050 permit udp any 133.237.111.144 0.0.0.7 eq isakmp
 66060 permit udp any 133.237.111.144 0.0.0.7 eq 4500
 66070 permit esp any 133.237.111.160 0.0.0.15
 66080 permit udp any 133.237.111.160 0.0.0.15 eq isakmp
 66090 permit udp any 133.237.111.160 0.0.0.15 eq 4500
 66110 permit esp any 133.237.111.176 0.0.0.7
 66120 permit udp any 133.237.111.176 0.0.0.7 eq isakmp
 66130 permit udp any 133.237.111.176 0.0.0.7 eq 4500
 67000 remark ###_ALLOW_GIT_###
 67010 permit tcp any host 133.237.56.71 eq 7999
 68100 remark ###_ALLOW_ID_SERVICE_DR_###
 68110 permit tcp host 202.189.147.46 host 202.72.54.120 eq 9402
 68200 remark ###_ALLOW_AWS_SERVICE_###
 68210 permit esp host 27.0.1.16 host 202.72.49.245
 68220 permit udp host 27.0.1.16 host 202.72.49.245 eq isakmp
 68230 permit esp host 27.0.1.144 host 202.72.49.245
 68240 permit udp host 27.0.1.144 host 202.72.49.245 eq isakmp
 68400 remark ###_ALLOW_GSLB_DNS_###
 68410 permit udp any host 202.72.48.240 eq domain
 68420 permit tcp any host 202.72.48.240 eq domain
 68430 permit udp any host 202.72.63.230 eq domain
 68440 permit tcp any host 202.72.63.230 eq domain
 68450 permit udp any host 133.237.55.234 eq domain
 68460 permit tcp any host 133.237.55.234 eq domain
 68470 permit udp any host 133.237.63.239 eq domain
 68480 permit tcp any host 133.237.63.239 eq domain
 68490 permit udp any eq domain host 133.237.55.222
 68500 permit tcp any eq domain host 133.237.55.222
 68510 permit udp any eq domain host 133.237.55.240
 68520 permit tcp any eq domain host 133.237.55.240
 68530 permit udp any eq domain host 133.237.55.241
 68540 permit tcp any eq domain host 133.237.55.241
 68600 remark ###_ALLOW_EXTERNAL_DNS_###
 68610 permit tcp any host 133.237.30.65 eq domain
 68620 permit udp any host 133.237.30.65 eq domain
 68630 permit tcp any host 133.237.30.75 eq domain
 68640 permit udp any host 133.237.30.75 eq domain
 68650 permit tcp any host 133.237.30.76 eq domain
 68660 permit udp any host 133.237.30.76 eq domain
 68670 permit tcp any host 133.237.30.77 eq domain
 68680 permit udp any host 133.237.30.77 eq domain
 68690 permit tcp any host 133.237.30.66 eq domain
 68700 permit udp any host 133.237.30.66 eq domain
 68710 permit tcp any host 133.237.30.67 eq domain
 68720 permit udp any host 133.237.30.67 eq domain
 68730 permit tcp any host 133.237.58.23 eq domain
 68740 permit udp any host 133.237.58.23 eq domain
 68750 permit tcp any host 133.237.81.1 eq domain
 68760 permit udp any host 133.237.81.1 eq domain
 68770 permit tcp any host 133.237.81.2 eq domain
 68780 permit udp any host 133.237.81.2 eq domain
 68790 permit tcp any host 133.237.81.14 eq domain
 68800 permit udp any host 133.237.81.14 eq domain
 68810 permit tcp any host 133.237.81.15 eq domain
 68820 permit udp any host 133.237.81.15 eq domain
 68830 permit tcp any host 133.237.81.3 eq domain
 68840 permit udp any host 133.237.81.3 eq domain
 68850 permit tcp any host 133.237.81.4 eq domain
 68860 permit udp any host 133.237.81.4 eq domain
 68870 permit tcp any host 133.237.81.5 eq domain
 68880 permit udp any host 133.237.81.5 eq domain
 68890 permit tcp any host 133.237.81.6 eq domain
 68900 permit udp any host 133.237.81.6 eq domain
 69000 remark ###_ALLOW_INTERNAL_DNS_###
 69010 permit udp any eq domain host 133.237.57.1
 69020 permit udp any eq ntp host 133.237.57.1
 69030 permit udp any eq domain host 133.237.57.2
 69040 permit udp any eq ntp host 133.237.57.2
 69050 permit udp any eq domain host 133.237.57.3
 69060 permit udp any eq ntp host 133.237.57.3
 69070 permit udp any eq domain host 133.237.57.11
 69080 permit udp any eq ntp host 133.237.57.11
 69090 permit udp any eq domain host 133.237.57.12
 69100 permit udp any eq ntp host 133.237.57.12
 69110 permit udp any eq domain host 133.237.57.13
 69120 permit udp any eq ntp host 133.237.57.13
 69130 permit udp any eq domain host 133.237.30.68
 69140 permit udp any eq domain host 133.237.30.69
 69150 permit udp any eq domain host 133.237.58.21
 69160 permit udp any eq ntp host 133.237.58.21
 69170 permit udp any eq domain host 133.237.58.22
 69180 permit udp any eq ntp host 133.237.58.22
 69190 permit udp any eq domain host 133.237.81.1
 69200 permit udp any eq domain host 133.237.81.2
 69210 permit udp any eq domain host 133.237.81.14
 69220 permit udp any eq domain host 133.237.81.15
 69230 permit udp any eq domain host 133.237.81.3
 69240 permit udp any eq domain host 133.237.81.4
 69250 permit udp any eq domain host 133.237.81.5
 69260 permit udp any eq domain host 133.237.81.6
 69270 permit udp any eq ntp host 133.237.81.3
 69280 permit udp any eq ntp host 133.237.81.4
 69290 permit udp any eq ntp host 133.237.81.5
 69300 permit udp any eq ntp host 133.237.81.6
 69310 permit udp any eq domain host 133.237.58.101
 69320 permit udp any eq domain host 133.237.58.102
 69330 permit udp any eq domain host 133.237.58.103
 69340 permit udp any eq ntp host 133.237.58.101
 69350 permit udp any eq ntp host 133.237.58.102
 69360 permit udp any eq ntp host 133.237.58.103
 70000 remark ###_ALLOW_FUSION_RTP_###
 70005 permit udp any host 133.237.56.45 range 1024 65535
 70020 permit udp any host 133.237.56.19 range 1024 65535
 70030 permit udp any host 133.237.56.77 range 1024 65535
 70040 permit udp any host 133.237.56.78 range 1024 65535
 70050 permit udp any host 133.237.56.111 range 1024 65535
 70060 permit udp any host 133.237.56.112 range 1024 65535
 70100 remark ###_ALLOW_FUSION_SIP_###
 70110 permit udp any host 133.237.56.45 eq 5060
 70120 permit udp any host 133.237.56.19 eq 5060
 70130 permit tcp any host 133.237.56.19 eq 5060
 70200 remark ###_ALLOW_FUSION_IAX2_###
 70210 permit tcp any host 133.237.56.45 eq 4569
 70220 permit udp any host 133.237.56.45 eq 4569
 70300 remark ###_ALLOW_TRAVEL_PROXY_###
 70310 permit tcp any host 133.237.41.8 range 8000 10000
 70400 remark ###_ALLOW_STYLIFE_SFTP_###
 70410 permit tcp any host 133.237.56.30 eq ssh
 70500 remark ###_ALLOW_STG-CHECKNS_DNS_###
 70510 permit tcp any host 133.237.56.56 eq domain
 70520 permit udp any host 133.237.56.56 eq domain
 70530 permit tcp any host 133.237.56.57 eq domain
 70540 permit udp any host 133.237.56.57 eq domain
 70700 remark ###ALLOW_RDCNW_SFTP###
 70710 permit tcp host 58.138.190.47 host 133.237.56.130 eq ssh
 70720 permit tcp host 58.138.190.47 host 133.237.56.131 eq ssh
 70730 permit tcp host 58.138.190.47 host 133.237.56.132 eq ssh
 70740 permit tcp host 58.138.190.47 host 133.237.56.133 eq ssh
 70750 permit tcp host 210.248.166.47 host 133.237.56.130 eq ssh
 70760 permit tcp host 210.248.166.47 host 133.237.56.131 eq ssh
 70770 permit tcp host 210.248.166.47 host 133.237.56.132 eq ssh
 70780 permit tcp host 210.248.166.47 host 133.237.56.133 eq ssh
 70790 permit tcp host 106.186.74.39 host 133.237.56.130 eq ssh
 70800 permit tcp host 106.186.74.39 host 133.237.56.131 eq ssh
 70810 permit tcp host 106.186.74.39 host 133.237.56.132 eq ssh
 70820 permit tcp host 106.186.74.39 host 133.237.56.133 eq ssh
 70900 remark ###_ALLOW_MINIJOB_RAKUTEN_CO_JP_60812-60813_###
 70950 remark ###_ALLOW_CONFIRMATION-MATP_RAKUTEN_CO_JP_25_###
 70960 permit tcp any host 133.237.48.8 eq smtp
 71000 remark ###_ALLOW_CASSANDRA_to_AZURE_GCP###
 71010 permit tcp any host 133.237.28.104 eq 7000
 71020 permit tcp any host 133.237.28.139 eq 7000
 71030 permit tcp any host 133.237.28.182 eq 7000
 71040 permit tcp any host 133.237.28.104 eq 7001
 71050 permit tcp any host 133.237.28.139 eq 7001
 71060 permit tcp any host 133.237.28.182 eq 7001
 71070 permit tcp any host 133.237.28.104 eq 9042
 71080 permit tcp any host 133.237.28.139 eq 9042
 71090 permit tcp any host 133.237.28.182 eq 9042
 72000 permit tcp any host 133.237.28.121 eq 7001
 72010 permit tcp any host 133.237.28.148 eq 7001
 72020 permit tcp any host 133.237.28.48 eq 7001
 72030 permit tcp any host 133.237.28.154 eq 7001
 72040 permit tcp any host 133.237.28.188 eq 7001
 72050 permit tcp any host 133.237.28.35 eq 7001
 72060 permit tcp any host 133.237.28.50 eq 7001
 72070 permit tcp any host 133.237.28.63 eq 7001
 72080 permit tcp any host 133.237.28.69 eq 7001
 72090 permit tcp any host 133.237.28.104 eq 7001
 73000 permit tcp any host 133.237.28.79 eq 7001
 73010 permit tcp any host 133.237.28.84 eq 7001
 73020 permit tcp any host 133.237.28.139 eq 7001
 73030 permit tcp any host 133.237.28.94 eq 7001
 73040 permit tcp any host 133.237.28.182 eq 7001
 74000 remark ###_ALLOW_ONE_CLOUD_GSLB_DNS_###
 74010 permit udp any 133.237.47.0 0.0.0.255 eq domain
 74020 permit tcp any 133.237.47.0 0.0.0.255 eq domain
 74030 permit udp any eq domain 133.237.47.0 0.0.0.255
 74035 remark ###_ALLOW_RAKUTEN_SONPO_FW_###
 74040 permit ipv4 host 13.113.54.169 host 202.72.49.243
 74045 permit ipv4 host 130.33.66.20 host 202.72.49.243
 74050 permit ipv4 host 52.199.124.29 host 202.72.49.243
 74055 permit ipv4 host 48.210.49.177 host 202.72.49.243
 74060 permit ipv4 host 210.193.113.233 host 202.72.49.243
 74065 permit ipv4 host 210.162.150.110 host 202.72.49.243
 74070 remark ###ALLOW_Rakuten-Sonpo_to_VS server###
 74080 permit udp any eq domain host 133.237.32.5
 74090 remark "###ALLOW_TCP_1443_to_DEV_LBAAS###"
 74100 permit tcp any host 133.237.175.26 eq 1443
 74110 permit tcp host 43.253.215.4 133.237.56.130 0.0.0.1 eq ssh
 74120 permit tcp host 43.253.215.4 133.237.56.132 0.0.0.1 eq ssh
 74130 permit tcp host 43.253.214.5 133.237.56.130 0.0.0.1 eq ssh
 74140 permit tcp host 43.253.214.5 133.237.56.132 0.0.0.1 eq ssh
 74150 permit tcp host 218.40.13.62 133.237.56.130 0.0.0.1 eq ssh
 74160 permit tcp host 218.40.13.62 133.237.56.132 0.0.0.1 eq ssh
 74170 permit tcp host 218.40.5.101 133.237.56.130 0.0.0.1 eq ssh
 74180 permit tcp host 218.40.5.101 133.237.56.132 0.0.0.1 eq ssh
 74190 permit tcp 42.125.229.210 0.0.0.1 133.237.56.130 0.0.0.1 eq ssh
 74200 permit tcp 42.125.229.210 0.0.0.1 133.237.56.132 0.0.0.1 eq ssh
 74210 permit tcp 27.121.62.118 0.0.0.1 133.237.56.130 0.0.0.1 eq ssh
 74220 permit tcp 27.121.62.118 0.0.0.1 133.237.56.132 0.0.0.1 eq ssh
 74230 permit tcp 218.40.13.60 0.0.0.1 133.237.56.130 0.0.0.1 eq ssh
 74240 permit tcp 218.40.13.60 0.0.0.1 133.237.56.132 0.0.0.1 eq ssh
 74250 permit tcp 218.40.5.41 0.0.0.1 133.237.56.130 0.0.0.1 eq ssh
 74260 permit tcp 218.40.5.41 0.0.0.1 133.237.56.132 0.0.0.1 eq ssh
 99000 remark ###_From_Datadock_to_Internet_###
 99001 deny ipv4 103.87.176.0 0.0.3.255 202.72.48.0 0.0.15.255 log
 99002 deny ipv4 103.87.176.0 0.0.3.255 133.237.0.0 0.0.255.255 log
 99003 deny ipv4 157.185.192.0 0.0.63.255 202.72.48.0 0.0.15.255 log
 99004 deny ipv4 157.185.192.0 0.0.63.255 133.237.0.0 0.0.255.255 log
 99005 permit ipv4 103.87.176.0 0.0.3.255 any
 99006 permit ipv4 157.185.192.0 0.0.63.255 any
 99007 deny ipv4 103.81.144.0 0.0.3.255 202.72.48.0 0.0.15.255 log
 99008 deny ipv4 103.81.144.0 0.0.3.255 133.237.0.0 0.0.255.255 log
 99009 deny ipv4 193.114.0.0 0.0.31.255 202.72.48.0 0.0.15.255 log
 99010 deny ipv4 193.114.0.0 0.0.31.255 133.237.0.0 0.0.255.255 log
 99011 deny ipv4 219.100.84.0 0.0.3.255 202.72.48.0 0.0.15.255 log
 99012 deny ipv4 219.100.84.0 0.0.3.255 133.237.0.0 0.0.255.255 log
 99013 permit ipv4 103.81.144.0 0.0.3.255 any
 99014 permit ipv4 193.114.0.0 0.0.31.255 any
 99015 permit ipv4 219.100.84.0 0.0.3.255 any
 99998 remark ###_DENY_ANY_###
 99999 deny ipv4 any any log
!
ipv4 access-list ACL-130
 40 remark ### From_Datadock_to_Internet_###
 45 permit ipv4 103.87.176.0 0.0.3.255 any
 50 permit ipv4 157.185.192.0 0.0.63.255 any
 51 permit ipv4 103.81.144.0 0.0.3.255 any
 52 permit ipv4 193.114.0.0 0.0.31.255 any
 53 permit ipv4 219.100.84.0 0.0.3.255 any
 55 remark ### From_Internet_to_Datadock_###
 60 permit ipv4 any 103.87.176.0 0.0.3.255
 65 permit ipv4 any 157.185.192.0 0.0.63.255
 66 permit ipv4 any 103.81.144.0 0.0.3.255
 67 permit ipv4 any 193.114.0.0 0.0.31.255
 68 permit ipv4 any 219.100.84.0 0.0.3.255
 70 remark ### RCOM CLOUD RANGE ###
 80 permit ipv4 103.136.152.0 0.0.3.255 any
 90 permit ipv4 133.237.33.0 0.0.0.255 any
 100 permit ipv4 202.223.52.0 0.0.3.255 any
 101 remark ###ALLOW_FROM_INTRA###
 102 permit tcp 133.237.7.64 0.0.0.31 host 15.152.135.59 eq 445
 103 permit udp 133.237.7.64 0.0.0.31 host 15.152.135.59 eq 445
 104 permit tcp host 133.237.7.127 host 15.152.135.59 eq 445
 105 permit udp host 133.237.7.127 host 15.152.135.59 eq 445
 106 permit tcp 133.237.92.64 0.0.0.31 host 15.152.135.59 eq 445
 107 permit udp 133.237.92.64 0.0.0.31 host 15.152.135.59 eq 445
 108 permit tcp host 133.237.92.10 host 15.152.135.59 eq 445
 109 permit udp host 133.237.92.10 host 15.152.135.59 eq 445
 110 remark ###_DENY_MS_###
 120 deny tcp any any eq 135
 130 deny udp any any eq 135
 140 deny tcp any any range 137 139
 150 deny udp any any range netbios-ns netbios-ss
 160 deny tcp any any eq 445
 510 remark ###_ALLOW_FROM_Raktuen_###
 520 permit ipv4 202.72.48.0 0.0.15.255 any
 540 permit ipv4 133.237.0.0 0.0.255.255 any
 1010 remark ###_ALLOW_FROM_TRANSIT_INTERFACE_###
 1020 permit ipv4 host 203.192.131.134 any
 1030 permit ipv4 host 203.192.131.226 any
 1040 permit ipv4 host 210.173.176.197 any
 1050 permit ipv4 host 202.219.160.202 any
 1060 permit ipv4 host 202.219.160.206 any
 1070 permit ipv4 host 61.207.54.154 any
 1080 permit ipv4 host 61.120.145.130 any
 1090 permit ipv4 host 203.190.227.45 any
 1100 permit ipv4 host 210.173.175.42 any
 1115 permit ipv4 host 101.203.88.77 any
 1120 permit ipv4 host 202.232.9.10 any
 1140 permit ipv4 host 106.185.22.34 any
 1150 permit ipv4 host 185.69.128.241 any
 1160 permit ipv4 host 185.69.128.243 any
 1180 permit ipv4 host 117.103.177.90 any
 1190 permit ipv4 host 117.103.176.10 any
 1200 permit ipv4 host 210.173.184.91 any
 1210 permit ipv4 host 210.173.176.15 any
 1220 permit ipv4 host 203.105.72.218 any
 1250 permit ipv4 host 103.124.3.103 any
 1260 permit ipv4 host 103.124.3.105 any
 1270 permit ipv4 host 103.124.3.107 any
 1280 permit ipv4 host 103.124.3.109 any
 1290 permit ipv4 host 103.124.3.137 any
 1300 permit ipv4 host 103.124.3.139 any
 1310 permit ipv4 host 103.124.3.141 any
 1320 permit ipv4 host 103.124.3.143 any
 1330 permit ipv4 host 104.241.192.193 any
 1340 permit ipv4 host 104.241.192.195 any
 1350 permit ipv4 host 104.241.192.197 any
 1360 permit ipv4 host 104.241.192.199 any
 1370 permit ipv4 host 210.173.171.186 any
 1380 permit ipv4 host 61.120.147.254 any
 1390 permit ipv4 host 210.171.225.67 any
 1400 permit ipv4 host 210.171.225.77 any
 1410 permit ipv4 host 103.87.176.199 any
 1420 permit ipv4 host 103.87.176.195 any
 1430 permit ipv4 host 202.216.4.229 any
 1440 permit ipv4 host 202.216.4.231 any
 1450 permit ipv4 host 72.14.211.199 any
 1460 permit ipv4 host 103.87.176.217 any
 1470 permit ipv4 host 103.87.176.219 any
 1480 permit ipv4 host 210.232.233.10 any
 1490 permit ipv4 host 104.241.192.207 any
 1500 permit ipv4 host 104.241.192.209 any
 99998 deny ipv4 10.0.0.0 0.255.255.255 any
 99999 deny ipv4 any any
!
ipv4 access-list IPv4-ACL-MGMT
 10 remark ### TYO2 ###
 20 permit ipv4 172.25.253.0/24 any
 30 remark ### TYO3 ###
 40 permit ipv4 172.25.250.0/24 any
 50 remark ### OSA1 ###
 60 permit ipv4 172.25.249.0/24 any
 70 remark ### OSA2 ###
 80 permit ipv4 172.25.248.0/24 any
 90 remark ### TYO4 ###
 100 permit ipv4 100.65.253.0/24 any
 200 remark ### JPE1 ###
 210 permit ipv4 100.65.0.0/18 any
 220 remark ### new JPE1 ad-net ###
 230 permit ipv4 100.65.0.0 0.0.255.255 any
 300 remark ### JPE2 ###
 310 permit ipv4 172.25.128.0/18 any
 320 remark ### new JPE2 ad-net ###
 330 permit ipv4 172.25.128.0 0.0.127.255 any
 400 remark ### JPE1 RIaaS ###
 410 permit ipv4 10.225.48.0/24 any
 420 remark ### new JP/EU/US ad-net ###
 430 permit ipv4 10.224.0.0 0.15.255.255 any
 500 remark ### Flow Collector ###
 510 permit ipv4 host 133.237.9.20 any
 99998 remark ### DENY ALL ###
 99999 deny ipv4 any any log
!
flow exporter-map FE
 version v9
  options interface-table timeout 120
  options sampler-table timeout 120
 !
 transport udp 1993
 source Loopback1
 destination 133.237.9.20
!
flow exporter-map FEKentik
 version v9
  options interface-table timeout 120
  options sampler-table timeout 120
 !
 transport udp 9995
 source MgmtEth0/RP0/CPU0/0
 destination 172.25.133.36 vrf MGMT
!
flow exporter-map FEKentik-jpbbg
 version v9
  options interface-table timeout 120
  options sampler-table timeout 120
 !
 transport udp 9995
 source MgmtEth0/RP0/CPU0/0
 destination 100.65.7.18 vrf MGMT
!
flow exporter-map FEKentik-net-jpe1-kflowcoll01z
 version v9
  options interface-table timeout 120
  options sampler-table timeout 120
 !
 transport udp 9995
 source MgmtEth0/RP0/CPU0/0
 destination 10.225.48.31 vrf MGMT
!
flow monitor-map FM
 record ipv4
 exporter FEKentik-net-jpe1-kflowcoll01z
 cache timeout active 300
 cache timeout inactive 10
!
sampler-map FS
 random 1 out-of 1024
!
interface Bundle-Ether1
 description IC | bbsw01-osa2 | po5
!
interface Bundle-Ether1.3192
 description TRANSIT | RMI | CID:RM-RINC-W1 | rmn-NOC-ope2@mail.rakuten.com
 ipv4 address 202.216.4.229 255.255.255.254
 ipv4 verify unicast source reachable-via any
 ipv6 nd suppress-ra
 ipv6 verify unicast source reachable-via any
 ipv6 address 240b:c020:115::8224:0:1/127
 ipv6 enable
 load-interval 30
 flow ipv4 monitor FM sampler FS ingress
 encapsulation dot1q 3192
 ipv4 access-group ACL-100 ingress compress level 0
 ipv4 access-group ACL-130 egress
 ipv6 access-group IPv6-ACL-100 ingress compress level 0
 ipv6 access-group IPv6-ACL-130 egress
!
interface Bundle-Ether1.3200
 description IC | gw01-tyo3 | BE1.3200
 ipv4 address 202.72.49.21 255.255.255.254
 ipv4 verify unicast source reachable-via any
 ipv6 nd suppress-ra
 ipv6 verify unicast source reachable-via any
 ipv6 address 2403:400:100:3200::21/64
 ipv6 enable
 load-interval 30
 flow ipv4 monitor FM sampler FS ingress
 encapsulation dot1q 3200
!
interface Bundle-Ether1.3246
 description PNI | cr1-osa4 | RBN
 ipv4 address 104.241.192.207 255.255.255.254
 ipv4 verify unicast source reachable-via any
 ipv6 nd suppress-ra
 ipv6 verify unicast source reachable-via any
 ipv6 address 2a07:4e40:f600:1008::1/127
 ipv6 enable
 load-interval 30
 flow ipv4 monitor FM sampler FS ingress
 encapsulation dot1q 3246
 ipv4 access-group ACL-100 ingress compress level 0
 ipv4 access-group ACL-130 egress
 ipv6 access-group IPv6-ACL-100 ingress compress level 0
 ipv6 access-group IPv6-ACL-130 egress
!
interface Bundle-Ether1.3697
 description IC | gw02-osa2 | BE1.3697
 ipv4 address 202.72.49.140 255.255.255.254
 ipv6 nd suppress-ra
 ipv6 address 2403:400:100:3697::140/64
 load-interval 30
 flow ipv4 monitor FM sampler FS ingress
 encapsulation dot1q 3697
!
interface Bundle-Ether1.3699
 description IC | gw01-tyo4 | BE1.3699
 ipv4 address 202.72.49.144 255.255.255.254
 ipv6 nd suppress-ra
 ipv6 address 2403:400:100:3699::144/64
 load-interval 30
 flow ipv4 monitor FM sampler FS ingress
 encapsulation dot1q 3699
!
interface Bundle-Ether2
 description IC | bbsw02-osa2 | Po5
!
interface Bundle-Ether2.3201
 description IC | gw01-tyo3 | BE2.3201
 ipv4 address 202.72.49.23 255.255.255.254
 ipv4 verify unicast source reachable-via any
 ipv6 nd suppress-ra
 ipv6 verify unicast source reachable-via any
 ipv6 address 2403:400:100:3201::23/64
 ipv6 enable
 load-interval 30
 flow ipv4 monitor FM sampler FS ingress
 encapsulation dot1q 3201
!
interface Bundle-Ether2.3593
 description IC | gw01-tyo4 | BE2.3593
 ipv4 address 202.72.49.29 255.255.255.254
 ipv6 nd suppress-ra
 ipv6 address 2403:400:100:3593::29/64
 load-interval 30
 flow ipv4 monitor FM sampler FS ingress
 encapsulation dot1q 3593
!
interface Bundle-Ether2.3698
 description IC | gw02-osa2 | BE2.3698
 ipv4 address 202.72.49.142 255.255.255.254
 ipv6 nd suppress-ra
 ipv6 address 2403:400:100:3698::142/64
 load-interval 30
 flow ipv4 monitor FM sampler FS ingress
 encapsulation dot1q 3698
!
interface Bundle-Ether3
 description IC | bbsw01-osa2 | po6
!
interface Bundle-Ether3.3693
 description IC | bbsw01-osa2 | po6.3693
 ipv4 address 202.72.49.114 255.255.255.254
 ipv6 nd suppress-ra
 ipv6 address 2403:400:100:3693::114/64
 load-interval 30
 flow ipv4 monitor FM sampler FS ingress
 encapsulation dot1q 3693
!
interface Bundle-Ether4
 description IC | bbsw02-osa2 | Po6
!
interface Bundle-Ether4.3694
 description IC | bbsw02-osa2 | Po6.3694
 ipv4 address 202.72.49.116 255.255.255.254
 ipv6 nd suppress-ra
 ipv6 address 2403:400:100:3694::116/64
 load-interval 30
 flow ipv4 monitor FM sampler FS ingress
 encapsulation dot1q 3694
!
interface Bundle-Ether5
 description SHARED | IIJ & JPNAP Osaka
!
interface Bundle-Ether5.2
 description IX | JPNAP Osaka | CID:0154 | support@mfeed.ad.jp
 ipv4 address 210.173.184.91 255.255.254.0
 ipv4 verify unicast source reachable-via any
 ipv6 nd suppress-ra
 ipv6 verify unicast source reachable-via any
 ipv6 address 2001:7fa:7:2:0:2:3820:1/64
 ipv6 enable
 load-interval 30
 flow ipv4 monitor FM sampler FS ingress
 encapsulation dot1q 2
 ipv4 access-group ACL-100 ingress compress level 0
 ipv4 access-group ACL-130 egress
 ipv6 access-group IPv6-ACL-100 ingress compress level 0
 ipv6 access-group IPv6-ACL-130 egress
!
interface Bundle-Ether5.223
 description TRANSIT | IIJ | CID:ip8469816 | support@iij.ad.jp
 ipv4 address 210.173.171.186 255.255.255.248
 ipv4 verify unicast source reachable-via any
 ipv6 nd suppress-ra
 ipv6 verify unicast source reachable-via any
 ipv6 address 2001:7fa:7:2223::cafe/64
 ipv6 enable
 load-interval 30
 flow ipv4 monitor FM sampler FS ingress
 encapsulation dot1q 223
 ipv4 access-group ACL-100 ingress compress level 0
 ipv4 access-group ACL-130 egress
 ipv6 access-group IPv6-ACL-100 ingress compress level 0
 ipv6 access-group IPv6-ACL-130 egress
!
interface Bundle-Ether6
 description PNI | GOOGLE | XCID:22722952 | noc@google.com
 ipv4 address 142.251.195.25 255.255.255.254
 ipv4 verify unicast source reachable-via any
 ipv6 nd suppress-ra
 ipv6 verify unicast source reachable-via any
 ipv6 address 2001:4860:1:1::3169/127
 ipv6 enable
 load-interval 30
 flow ipv4 monitor FM sampler FS ingress
 ipv4 access-group ACL-100 ingress compress level 0
 ipv4 access-group ACL-130 egress
 ipv6 access-group IPv6-ACL-100 ingress compress level 0
 ipv6 access-group IPv6-ACL-130 egress
!
interface Loopback1
 ipv4 address 202.72.48.240 255.255.255.255
 ipv6 address 2403:400:100::240/128
!
interface MgmtEth0/RP0/CPU0/0
 vrf MGMT
 ipv4 address 100.65.249.11 255.255.255.0
!
interface TenGigE0/0/0/0
 description SHARED | IIJ & JPNAP Osaka
 bundle id 5 mode active
 lacp period short
 carrier-delay up 0 down 200
!
interface TenGigE0/0/0/1
 shutdown
!
interface TenGigE0/0/0/2
 shutdown
!
interface TenGigE0/0/0/3
 shutdown
!
interface TenGigE0/0/0/4
 shutdown
!
interface TenGigE0/0/0/5
 shutdown
!
interface TenGigE0/0/0/6
 shutdown
!
interface TenGigE0/0/0/7
 shutdown
!
interface TenGigE0/0/0/8
 shutdown
!
interface TenGigE0/0/0/9
 shutdown
!
interface TenGigE0/0/0/10
 shutdown
!
interface TenGigE0/0/0/11
 shutdown
!
interface TenGigE0/0/0/12
 shutdown
!
interface TenGigE0/0/0/13
 shutdown
!
interface TenGigE0/0/0/14
 shutdown
!
interface TenGigE0/0/0/15
 shutdown
!
interface TenGigE0/0/0/16
 shutdown
!
interface TenGigE0/0/0/17
 shutdown
!
interface TenGigE0/0/0/18
 shutdown
!
interface TenGigE0/0/0/19
 shutdown
!
interface TenGigE0/0/0/20
 shutdown
!
interface TenGigE0/0/0/21
 shutdown
!
interface TenGigE0/0/0/22
 shutdown
!
interface TenGigE0/0/0/23
 shutdown
!
interface TwentyFiveGigE0/0/0/24
 shutdown
!
interface TwentyFiveGigE0/0/0/25
 shutdown
!
interface TwentyFiveGigE0/0/0/26
 shutdown
!
interface TwentyFiveGigE0/0/0/27
 shutdown
!
interface TwentyFiveGigE0/0/0/28
 shutdown
!
interface TwentyFiveGigE0/0/0/29
 shutdown
!
interface TwentyFiveGigE0/0/0/30
 shutdown
!
interface TwentyFiveGigE0/0/0/31
 shutdown
!
interface TwentyFiveGigE0/0/0/32
 shutdown
!
interface TwentyFiveGigE0/0/0/33
 shutdown
!
interface TwentyFiveGigE0/0/0/34
 shutdown
!
interface TwentyFiveGigE0/0/0/35
 shutdown
!
interface TwentyFiveGigE0/0/0/36
 shutdown
!
interface TwentyFiveGigE0/0/0/37
 shutdown
!
interface TwentyFiveGigE0/0/0/38
 shutdown
!
interface TwentyFiveGigE0/0/0/39
 shutdown
!
interface HundredGigE0/0/1/0
 description IC | bbsw01-osa2 | swp17
 bundle id 1 mode active
 lacp period short
!
interface HundredGigE0/0/1/1
 description IC | bbsw01-osa2 | swp18
 bundle id 3 mode active
 lacp period short
!
interface HundredGigE0/0/1/2
 description PNI | GOOGLE | XCID:22722952 | noc@google.com
 bundle id 6 mode active
 lacp period short
!
interface HundredGigE0/0/1/3
 shutdown
!
interface HundredGigE0/0/2/0
 description IC | bbsw02-osa2 | swp17
 bundle id 2 mode active
 lacp period short
!
interface HundredGigE0/0/2/1
 description IC | bbsw02-osa2 | swp18
 bundle id 4 mode active
 lacp period short
!
interface HundredGigE0/0/2/2
 shutdown
!
interface HundredGigE0/0/2/3
 shutdown
!
!
prefix-set PREFIX_V4_DEFAULT_ROUTE
  0.0.0.0/0
end-set
!
prefix-set PREFIX_V4_RBN_IN_PERMIT
  104.241.192.0/20,
  185.69.128.0/22,
  204.87.189.0/24,
  84.39.136.0/21,
  178.251.167.0/24,
  5.149.118.0/24,
  209.67.165.0/24,
  209.67.181.0/24,
  203.190.56.0/21
end-set
!
prefix-set PREFIX_V6_DEFAULT_ROUTE
  ::/0
end-set
!
prefix-set PREFIX_V6_RBN_IN_PERMIT
  2602:260::/32,
  2620:cb:8000::/48,
  2a05:2200::/29,
  2a07:4e40::/29
end-set
!
prefix-set PREFIX_V4_IIJ_OUT_PERMIT
  202.72.48.0/20,
  202.72.48.0/21,
  202.72.56.0/21,
  202.72.48.0/22,
  202.72.52.0/22,
  202.72.56.0/22,
  202.72.60.0/22,
  133.237.0.0/16,
  133.237.0.0/17,
  133.237.128.0/17,
  103.136.152.0/22,
  202.223.52.0/22,
  119.63.152.0/21
end-set
!
prefix-set PREFIX_V4_RBN_OUT_PERMIT
  202.72.48.0/20,
  202.72.48.0/21,
  202.72.56.0/21,
  202.72.48.0/22,
  202.72.52.0/22,
  202.72.56.0/22,
  202.72.60.0/22,
  133.237.0.0/16,
  133.237.0.0/17,
  133.237.128.0/17,
  103.136.152.0/22,
  202.223.52.0/22,
  119.63.152.0/21
end-set
!
prefix-set PREFIX_V4_RMI_OUT_PERMIT
  202.72.48.0/20,
  202.72.48.0/21,
  202.72.56.0/21,
  202.72.48.0/22,
  202.72.52.0/22,
  202.72.56.0/22,
  202.72.60.0/22,
  133.237.0.0/16,
  133.237.0.0/17,
  133.237.128.0/17,
  103.136.152.0/22,
  202.223.52.0/22,
  119.63.152.0/21
end-set
!
prefix-set PREFIX_V6_IIJ_OUT_PERMIT
  2403:400::/32,
  2403:400:300::/40,
  2403:400:500::/40,
  2403:400:800::/40,
  2403:400:ff00::/40,
  2403:401::/36
end-set
!
prefix-set PREFIX_V6_RBN_OUT_PERMIT
  2403:400::/32,
  2403:400:300::/40,
  2403:400:500::/40,
  2403:400:800::/40,
  2403:400:ff00::/40,
  2403:401::/36
end-set
!
prefix-set PREFIX_V6_RMI_OUT_PERMIT
  2403:400::/32,
  2403:400:300::/40,
  2403:400:500::/40,
  2403:400:800::/40,
  2403:400:ff00::/40,
  2403:401::/36
end-set
!
prefix-set PREFIX_V4_RAKUTEN_IN_DENY
  0.0.0.0/8 le 32,
  10.0.0.0/8 le 32,
  127.0.0.0/8 le 32,
  169.254.0.0/16 le 32,
  172.16.0.0/12 le 32,
  192.0.2.0/24 le 32,
  192.168.0.0/16 le 32,
  224.0.0.0/3 le 32,
  0.0.0.0/0 ge 25,
  198.51.100.0/24 le 32,
  203.0.113.0/24 le 32,
  100.64.0.0/10 le 32,
  133.237.0.0/16 le 32,
  202.72.48.0/20 le 32,
  210.173.176.0/24 le 32,
  210.173.175.40/29 le 32,
  61.207.54.152/30 le 32,
  61.120.145.128/30 le 32,
  202.232.9.8/30 le 32,
  106.185.22.32/30 le 32,
  210.130.146.136/30 le 32,
  210.173.184.0/23 le 32,
  203.105.72.216/30 le 32,
  211.0.206.212/30 le 32,
  203.105.72.192/30 le 32,
  103.136.152.0/22 le 32,
  202.223.52.0/22 le 32,
  101.203.88.0/21 le 32
end-set
!
prefix-set PREFIX_V6_RAKUTEN_IN_DENY
  ::/0,
  ::1/128,
  ::/128,
  ::/96,
  ::ffff:0.0.0.0/96,
  ::/8,
  fe80::/10,
  fec0::/10,
  fc00::/7,
  ff00::/8,
  2001:db8::/32,
  2403:400::/32 le 128,
  2001:7fa:7:1::/64 le 128,
  2001:7fa:7:1405::/64 le 128,
  2001:380:0:2565::/64 le 128,
  2001:de8:c::/64 le 128,
  2001:218:2000:5000::248/126 le 128,
  2001:240:bb41:1010::/64 le 128,
  2001:268:f702:105::/64 le 128,
  2001:240:bb4c:1023::/64 le 128,
  2001:218:3000:5000::3f4/126 le 128,
  2001:380:0:21e3::/64 le 128,
  2001:218:3000:5000::3f0/126 le 128,
  2403:401::/36 le 128
end-set
!
prefix-set PREFIX_V4_JPNAP_OUT_PERMIT
  202.72.48.0/20,
  202.72.48.0/21,
  202.72.56.0/21,
  202.72.48.0/22,
  202.72.52.0/22,
  202.72.56.0/22,
  202.72.60.0/22,
  133.237.0.0/16,
  133.237.0.0/17,
  133.237.128.0/17,
  103.136.152.0/22,
  202.223.52.0/22,
  119.63.152.0/21
end-set
!
prefix-set PREFIX_V6_JPNAP_OUT_PERMIT
  2403:400::/32,
  2403:400:300::/40,
  2403:400:500::/40,
  2403:400:800::/40,
  2403:400:ff00::/40,
  2403:401::/36
end-set
!
prefix-set PREFIX_V4_GOOGLE_OUT_PERMIT
  202.72.48.0/20,
  202.72.48.0/21,
  202.72.56.0/21,
  202.72.48.0/22,
  202.72.52.0/22,
  202.72.56.0/22,
  202.72.60.0/22,
  133.237.0.0/16,
  133.237.0.0/17,
  133.237.128.0/17,
  103.136.152.0/22,
  202.223.52.0/22,
  119.63.152.0/21
end-set
!
prefix-set PREFIX_V6_GOOGLE_OUT_PERMIT
  2403:400::/32,
  2403:400:300::/40,
  2403:400:500::/40,
  2403:400:800::/40,
  2403:400:ff00::/40,
  2403:401::/36
end-set
!
as-path-set FILTER_DENY
  ios-regex '.*'
end-set
!
as-path-set FILTER_PERMIT
  ios-regex '^$',
  ios-regex '_4271636681$',
  ios-regex '_4271636581$',
  ios-regex '_131914$',
  ios-regex '(_131914)+(_59126)+$',
  ios-regex '_4267714421$',
  ios-regex '_4267714621$'
end-set
!
as-path-set ROUTE_MAP_V4_IIJ_PERMIT
  ios-regex '^(2497_)+$'
end-set
!
as-path-set ROUTE_MAP_V4_RMI_PERMIT
  ios-regex '^(138384_)+$',
  ios-regex '^(138384_)+(10012_)+$',
  ios-regex '^(138384_)+(23720_)+$',
  ios-regex '^(138384_)+(15169_)',
  ios-regex '^(138384_)+(20940_)',
  ios-regex '^(138384_)+.*(54113_)'
end-set
!
as-path-set ROUTE_MAP_V6_IIJ_PERMIT
  ios-regex '_2497$'
end-set
!
as-path-set ROUTE_MAP_V6_RMI_PERMIT
  ios-regex '^(138384_)+$',
  ios-regex '^(138384_)+(10012_)+$',
  ios-regex '^(138384_)+(23720_)+$',
  ios-regex '^(138384_)+(15169_)',
  ios-regex '^(138384_)+(20940_)',
  ios-regex '^(138384_)+.*(54113_)'
end-set
!
as-path-set ROUTE_MAP_V4_GOOGLE_PERMIT
  ios-regex '^15169_'
end-set
!
as-path-set ROUTE_MAP_V6_GOOGLE_PERMIT
  ios-regex '^15169_'
end-set
!
as-path-set ROUTE_MAP_V4_ARTERIA_PERMIT
  ios-regex '^2519_'
end-set
!
as-path-set ROUTE_MAP_V6_ARTERIA_PERMIT
  ios-regex '^2519_'
end-set
!
route-policy BGP-PIC
  set path-selection backup 1 install
end-policy
!
route-policy DROP-ALL
  drop
end-policy
!
route-policy PASS-ALL
  pass
end-policy
!
route-policy AS_PREPEND
  prepend as-path 23820 5
end-policy
!
route-policy AS-PREPEND-23820
  prepend as-path 23820 6
end-policy
!
route-policy V4_IIJ_IN_ACTIVE
  if destination in PREFIX_V4_RAKUTEN_IN_DENY then
    drop
  else
    pass
  endif
  if as-path in ROUTE_MAP_V4_IIJ_PERMIT then
    set local-preference 600
  else
    set local-preference 400
  endif
end-policy
!
route-policy V4_RBN_IN_ACTIVE
  if destination in PREFIX_V4_RAKUTEN_IN_DENY then
    drop
  else
    pass
  endif
  if destination in PREFIX_V4_RBN_IN_PERMIT then
    set local-preference 600
  endif
end-policy
!
route-policy V4_RMI_IN_ACTIVE
  if destination in PREFIX_V4_RAKUTEN_IN_DENY then
    drop
  elseif as-path in ROUTE_MAP_V4_RMI_PERMIT then
    set local-preference 1200
  else
    set local-preference 100
  endif
end-policy
!
route-policy V6_IIJ_IN_ACTIVE
  if destination in PREFIX_V6_RAKUTEN_IN_DENY then
    drop
  else
    pass
  endif
  if as-path in ROUTE_MAP_V6_IIJ_PERMIT then
    set local-preference 600
  else
    set local-preference 400
  endif
end-policy
!
route-policy V6_RBN_IN_ACTIVE
  if destination in PREFIX_V6_RAKUTEN_IN_DENY then
    drop
  else
    pass
  endif
  if destination in PREFIX_V6_RBN_IN_PERMIT then
    set local-preference 600
  endif
end-policy
!
route-policy V6_RMI_IN_ACTIVE
  if destination in PREFIX_V6_RAKUTEN_IN_DENY then
    drop
  elseif as-path in ROUTE_MAP_V6_RMI_PERMIT then
    set local-preference 1200
  else
    set local-preference 100
  endif
end-policy
!
route-policy V4_IIJ_IN_STANDBY
  if destination in PREFIX_V4_RAKUTEN_IN_DENY then
    drop
  elseif as-path in ROUTE_MAP_V4_IIJ_PERMIT then
    set local-preference 100
    set med 0
  else
    drop
  endif
end-policy
!
route-policy V4_IIJ_OUT_ACTIVE
  if destination in PREFIX_V4_IIJ_OUT_PERMIT then
    pass
  else
    drop
  endif
  if as-path in FILTER_PERMIT then
    set med 50
    pass
  elseif as-path in FILTER_DENY then
    drop
  endif
end-policy
!
route-policy V4_RBN_OUT_ACTIVE
  if destination in PREFIX_V4_RBN_OUT_PERMIT then
    pass
  else
    drop
  endif
  if as-path in FILTER_PERMIT then
    set med 100
    pass
  elseif as-path in FILTER_DENY then
    drop
  endif
end-policy
!
route-policy V4_RMI_OUT_ACTIVE
  if destination in PREFIX_V4_RMI_OUT_PERMIT then
    pass
  else
    drop
  endif
  if as-path in FILTER_PERMIT then
    pass
  elseif as-path in FILTER_DENY then
    drop
  endif
end-policy
!
route-policy V6_IIJ_IN_STANDBY
  if destination in PREFIX_V6_RAKUTEN_IN_DENY then
    drop
  else
    pass
  endif
  if as-path in ROUTE_MAP_V6_IIJ_PERMIT then
    set local-preference 100
    set med 0
  else
    set local-preference 100
    set med 0
  endif
end-policy
!
route-policy V6_IIJ_OUT_ACTIVE
  if destination in PREFIX_V6_IIJ_OUT_PERMIT then
    pass
  else
    drop
  endif
  if as-path in FILTER_PERMIT then
    set med 50
    pass
  elseif as-path in FILTER_DENY then
    drop
  endif
end-policy
!
route-policy V6_RBN_OUT_ACTIVE
  if destination in PREFIX_V6_RBN_OUT_PERMIT then
    pass
  else
    drop
  endif
  if as-path in FILTER_PERMIT then
    pass
  elseif as-path in FILTER_DENY then
    drop
  endif
end-policy
!
route-policy V6_RMI_OUT_ACTIVE
  if destination in PREFIX_V6_RMI_OUT_PERMIT then
    pass
  else
    drop
  endif
  if as-path in FILTER_PERMIT then
    pass
  elseif as-path in FILTER_DENY then
    drop
  endif
end-policy
!
route-policy V4_JPNAP_IN_ACTIVE
  if destination in PREFIX_V4_RAKUTEN_IN_DENY then
    drop
  else
    set local-preference 800
    set med 0
  endif
end-policy
!
route-policy V6_JPNAP_IN_ACTIVE
  if destination in PREFIX_V6_RAKUTEN_IN_DENY then
    drop
  else
    set local-preference 800
    set med 0
  endif
end-policy
!
route-policy V4_GOOGLE_IN_ACTIVE
  if destination in PREFIX_V4_RAKUTEN_IN_DENY then
    drop
  else
    pass
  endif
  if as-path in ROUTE_MAP_V4_GOOGLE_PERMIT then
    set local-preference 1200
  endif
end-policy
!
route-policy V4_JPNAP_IN_STANDBY
  if destination in PREFIX_V4_RAKUTEN_IN_DENY then
    drop
  else
    set local-preference 700
    set med 0
  endif
end-policy
!
route-policy V4_JPNAP_OUT_ACTIVE
  if destination in PREFIX_V4_JPNAP_OUT_PERMIT then
    pass
  else
    drop
  endif
  if as-path in FILTER_PERMIT then
    set med 100
    pass
  elseif as-path in FILTER_DENY then
    drop
  endif
end-policy
!
route-policy V6_GOOGLE_IN_ACTIVE
  if destination in PREFIX_V6_RAKUTEN_IN_DENY then
    drop
  else
    pass
  endif
  if as-path in ROUTE_MAP_V6_GOOGLE_PERMIT then
    set local-preference 1200
  endif
end-policy
!
route-policy V6_JPNAP_IN_STANDBY
  if destination in PREFIX_V6_RAKUTEN_IN_DENY then
    drop
  else
    set local-preference 700
    set med 0
  endif
end-policy
!
route-policy V6_JPNAP_OUT_ACTIVE
  if destination in PREFIX_V6_JPNAP_OUT_PERMIT then
    pass
  else
    drop
  endif
  if as-path in FILTER_PERMIT then
    set med 100
    pass
  elseif as-path in FILTER_DENY then
    drop
  endif
end-policy
!
route-policy V4_ARTERIA_IN_ACTIVE
  if destination in PREFIX_V4_RAKUTEN_IN_DENY then
    drop
  else
    pass
  endif
  if as-path in ROUTE_MAP_V4_ARTERIA_PERMIT then
    set local-preference 800
  endif
end-policy
!
route-policy V4_GOOGLE_OUT_ACTIVE
  if destination in PREFIX_V4_GOOGLE_OUT_PERMIT then
    pass
  else
    drop
  endif
  if as-path in FILTER_PERMIT then
    pass
  elseif as-path in FILTER_DENY then
    drop
  endif
end-policy
!
route-policy V4_JPNAP_OUT_STANDBY
  if destination in PREFIX_V4_JPNAP_OUT_PERMIT then
    pass
  else
    drop
  endif
  if as-path in FILTER_PERMIT then
    set med 200
    pass
  elseif as-path in FILTER_DENY then
    drop
  endif
end-policy
!
route-policy V6_ARTERIA_IN_ACTIVE
  if destination in PREFIX_V6_RAKUTEN_IN_DENY then
    drop
  else
    pass
  endif
  if as-path in ROUTE_MAP_V6_ARTERIA_PERMIT then
    set local-preference 800
  endif
end-policy
!
route-policy V6_GOOGLE_OUT_ACTIVE
  if destination in PREFIX_V6_GOOGLE_OUT_PERMIT then
    pass
  else
    drop
  endif
  if as-path in FILTER_PERMIT then
    pass
  elseif as-path in FILTER_DENY then
    drop
  endif
end-policy
!
route-policy V6_JPNAP_OUT_STANDBY
  if destination in PREFIX_V6_JPNAP_OUT_PERMIT then
    pass
  else
    drop
  endif
  if as-path in FILTER_PERMIT then
    set med 200
    pass
  elseif as-path in FILTER_DENY then
    drop
  endif
end-policy
!
route-policy V4_ARTERIA_OUT_ACTIVE
  if destination in PREFIX_V4_JPNAP_OUT_PERMIT then
    pass
  else
    drop
  endif
  if as-path in FILTER_PERMIT then
    set med 100
    pass
  elseif as-path in FILTER_DENY then
    drop
  endif
end-policy
!
route-policy V4_DEFAULT_ROUTE_DENY
  if destination in PREFIX_V4_DEFAULT_ROUTE then
    drop
  else
    set weight 1000
  endif
end-policy
!
route-policy V6_ARTERIA_OUT_ACTIVE
  if destination in PREFIX_V6_JPNAP_OUT_PERMIT then
    pass
  else
    drop
  endif
  if as-path in FILTER_PERMIT then
    set med 100
    pass
  elseif as-path in FILTER_DENY then
    drop
  endif
end-policy
!
route-policy V6_DEFAULT_ROUTE_DENY
  if destination in PREFIX_V6_DEFAULT_ROUTE then
    drop
  else
    set weight 1000
  endif
end-policy
!
route-policy V4_DEFAULT_ROUTE_PERMIT
  if destination in PREFIX_V4_DEFAULT_ROUTE then
    pass
  else
    drop
  endif
end-policy
!
route-policy V6_DEFAULT_ROUTE_PERMIT
  if destination in PREFIX_V6_DEFAULT_ROUTE then
    pass
  else
    drop
  endif
end-policy
!
route-policy V4_DEFAULT_ROUTE_DENY_OUT
  if destination in PREFIX_V4_DEFAULT_ROUTE then
    drop
  else
    pass
  endif
end-policy
!
route-policy MAINT-V4_DEFAULT_ROUTE_DENY
  if destination in PREFIX_V4_DEFAULT_ROUTE then
    drop
  else
    prepend as-path 23820 3
    set weight 1000
  endif
end-policy
!
route-policy MAINT-V6_DEFAULT_ROUTE_DENY
  if destination in PREFIX_V6_DEFAULT_ROUTE then
    drop
  else
    prepend as-path 23820 3
    set weight 1000
  endif
end-policy
!
router static
 address-family ipv4 unicast
  133.237.0.0/16 Null0
  133.237.0.0/17 Null0
  133.237.128.0/17 Null0
  202.72.48.0/20 Null0
  202.72.48.0/21 Null0
  202.72.48.0/22 Null0
  202.72.52.0/22 Null0
  202.72.56.0/21 Null0
  202.72.56.0/22 Null0
  202.72.60.0/22 Null0
 !
 address-family ipv6 unicast
  2403:400::/32 Null0
  2403:400:300::/40 Null0
  2403:400:500::/40 Null0
  2403:400:800::/40 Null0
  2403:400:ff00::/40 Null0
 !
 vrf MGMT
  address-family ipv4 unicast
   0.0.0.0/0 100.65.249.254
  !
 !
!
router ospf 1
 log adjacency changes detail
 router-id 202.72.48.240
 nsf ietf
 default-information originate always metric 1 metric-type 1
 max-metric router-lsa on-startup 600 external-lsa
 area 0
  interface Bundle-Ether1.3192
   passive enable
  !
  interface Bundle-Ether1.3200
   bfd minimum-interval 300
   bfd fast-detect
   bfd multiplier 3
   cost 700
   network point-to-point
   retransmit-interval 2
   hello-interval 5
  !
  interface Bundle-Ether1.3246
   passive enable
  !
  interface Bundle-Ether1.3697
   bfd minimum-interval 300
   bfd fast-detect
   bfd multiplier 3
   cost 5
   network point-to-point
   retransmit-interval 2
   hello-interval 5
  !
  interface Bundle-Ether1.3699
   bfd minimum-interval 300
   bfd fast-detect
   bfd multiplier 3
   cost 700
   network point-to-point
   retransmit-interval 2
   hello-interval 5
  !
  interface Bundle-Ether2.3201
   bfd minimum-interval 300
   bfd fast-detect
   bfd multiplier 3
   cost 700
   network point-to-point
   retransmit-interval 2
   hello-interval 5
  !
  interface Bundle-Ether2.3593
   bfd minimum-interval 300
   bfd fast-detect
   bfd multiplier 3
   cost 700
   network point-to-point
   retransmit-interval 2
   hello-interval 5
  !
  interface Bundle-Ether2.3698
   bfd minimum-interval 300
   bfd fast-detect
   bfd multiplier 3
   cost 5
   network point-to-point
   retransmit-interval 2
   hello-interval 5
  !
  interface Bundle-Ether3.3693
   passive enable
  !
  interface Bundle-Ether4.3694
   passive enable
  !
  interface Bundle-Ether5.2
   passive enable
  !
  interface Bundle-Ether5.223
   passive enable
  !
  interface Bundle-Ether6
   passive enable
  !
  interface Loopback1
   passive enable
  !
 !
!
router ospfv3 1
 router-id 202.72.48.240
 stub-router router-lsa max-metric
  on-startup 600
  external-lsa
  include-stub
 !
 log adjacency changes detail
 default-information originate always metric 1 metric-type 1
 area 0
  interface Loopback1
   passive
  !
  interface Bundle-Ether5.2
   passive
  !
  interface Bundle-Ether5.223
   passive
  !
  interface Bundle-Ether1.3192
   passive
  !
  interface Bundle-Ether1.3200
   bfd multiplier 3
   bfd fast-detect
   bfd minimum-interval 300
   cost 700
   network point-to-point
   retransmit-interval 2
   hello-interval 5
  !
  interface Bundle-Ether1.3246
   passive
  !
  interface Bundle-Ether1.3697
   bfd multiplier 3
   bfd fast-detect
   bfd minimum-interval 300
   cost 5
   network point-to-point
   retransmit-interval 2
   hello-interval 5
  !
  interface Bundle-Ether1.3699
   bfd multiplier 3
   bfd fast-detect
   bfd minimum-interval 300
   cost 700
   network point-to-point
   retransmit-interval 2
   hello-interval 5
  !
  interface Bundle-Ether2.3201
   bfd multiplier 3
   bfd fast-detect
   bfd minimum-interval 300
   cost 700
   network point-to-point
   retransmit-interval 2
   hello-interval 5
  !
  interface Bundle-Ether2.3593
   bfd multiplier 3
   bfd fast-detect
   bfd minimum-interval 300
   cost 700
   network point-to-point
   retransmit-interval 2
   hello-interval 5
  !
  interface Bundle-Ether2.3698
   bfd multiplier 3
   bfd fast-detect
   bfd minimum-interval 300
   cost 5
   network point-to-point
   retransmit-interval 2
   hello-interval 5
  !
  interface Bundle-Ether3.3693
   passive
  !
  interface Bundle-Ether4.3694
   passive
  !
 !
!
router bgp 23820
 bfd minimum-interval 300
 bfd multiplier 3
 timers bgp 30 90
 bgp router-id 202.72.48.240
 bgp graceful-restart restart-time 120
 bgp graceful-restart stalepath-time 360
 bgp graceful-restart
 bgp log neighbor changes detail
 address-family ipv4 unicast
  bgp attribute-download
  advertise best-external
  maximum-paths ebgp 8
  additional-paths selection route-policy BGP-PIC
  network 133.237.0.0/16
  network 133.237.0.0/17
  network 133.237.128.0/17
  network 202.72.48.0/20
  network 202.72.48.0/21
  network 202.72.48.0/22
  network 202.72.52.0/22
  network 202.72.56.0/21
  network 202.72.56.0/22
  network 202.72.60.0/22
  network 202.223.52.0/22
 !
 address-family ipv6 unicast
  bgp attribute-download
  advertise best-external
  maximum-paths ebgp 8
  additional-paths selection route-policy BGP-PIC
  network 2403:400::/32
  network 2403:400:300::/40
  network 2403:400:500::/40
  network 2403:400:800::/40
  network 2403:400:ff00::/40
 !
 neighbor-group V4-JPNAP
  update-source Bundle-Ether5.2
  address-family ipv4 unicast
   route-policy V4_JPNAP_IN_ACTIVE in
   route-policy V4_JPNAP_OUT_ACTIVE out
   next-hop-self
   remove-private-AS
   soft-reconfiguration inbound always
  !
 !
 neighbor-group V6-JPNAP
  update-source Bundle-Ether5.2
  address-family ipv6 unicast
   route-policy V6_JPNAP_IN_ACTIVE in
   route-policy V6_JPNAP_OUT_ACTIVE out
   next-hop-self
   remove-private-AS
   soft-reconfiguration inbound always
  !
 !
 neighbor 202.216.4.228
  remote-as 138384
  bfd fast-detect
  <secret hidden>
  description "TRANSIT | RMI | AS138384 | Full Table"
  update-source Bundle-Ether1.3192
  address-family ipv4 unicast
   maximum-prefix 1100000 90
   route-policy V4_RMI_IN_ACTIVE in
   route-policy V4_RMI_OUT_ACTIVE out
   remove-private-AS
   soft-reconfiguration inbound always
  !
 !
 neighbor 202.72.48.220
  remote-as 23820
  <secret hidden>
  description "IC | gw02-tyo3 | AS23820 | Full Table"
  update-source Loopback1
  ! description ### gw02-tyo3 ###
  address-family ipv4 unicast
   maximum-prefix 4000000 75
   route-policy PASS-ALL in
   route-policy PASS-ALL out
   soft-reconfiguration inbound always
  !
 !
 neighbor 202.72.48.221
  remote-as 23820
  <secret hidden>
  description "IC | gw02-tyo4 | AS23820 | Full Table"
  update-source Loopback1
  ! description ### gw02-tyo4 ###
  address-family ipv4 unicast
   maximum-prefix 4000000 75
   route-policy PASS-ALL in
   route-policy PASS-ALL out
   soft-reconfiguration inbound always
  !
 !
 neighbor 202.72.48.238
  remote-as 23820
  <secret hidden>
  description "IC | gw01-tyo3 | AS23820 | Full Table"
  update-source Loopback1
  ! description ### gw01-tyo3 ###
  address-family ipv4 unicast
   maximum-prefix 4000000 75
   route-policy PASS-ALL in
   route-policy PASS-ALL out
   soft-reconfiguration inbound always
  !
 !
 neighbor 202.72.48.239
  remote-as 23820
  <secret hidden>
  description "IC | gw01-tyo4 | AS23820 | Full Table"
  update-source Loopback1
  ! description ### gw01-tyo4 ###
  address-family ipv4 unicast
   maximum-prefix 4000000 75
   route-policy PASS-ALL in
   route-policy PASS-ALL out
   soft-reconfiguration inbound always
  !
 !
 neighbor 202.72.48.241
  remote-as 23820
  <secret hidden>
  description "IC | gw02-osa2 | AS23820 | Full Table"
  update-source Loopback1
  ! description ### gw02-osa2 ###
  address-family ipv4 unicast
   maximum-prefix 4000000 75
   route-policy PASS-ALL in
   route-policy PASS-ALL out
   soft-reconfiguration inbound always
  !
 !
 neighbor 202.72.49.115
  remote-as 65181
  description "IC | bbsw01-osa2 | AS65181 | Internal Routes"
  address-family ipv4 unicast
   route-policy V4_DEFAULT_ROUTE_DENY in
   route-policy V4_DEFAULT_ROUTE_PERMIT out
   default-originate
   soft-reconfiguration inbound always
  !
 !
 neighbor 202.72.49.117
  remote-as 65181
  description "IC | bbsw02-osa2 | AS65181 | Internal Routes"
  address-family ipv4 unicast
   route-policy V4_DEFAULT_ROUTE_DENY in
   route-policy V4_DEFAULT_ROUTE_PERMIT out
   default-originate
  !
 !
 neighbor 208.76.14.223
  remote-as 23820
  timers 30 720
  description "IGNORE | Kentik | AS23820 | for monitoring"
  update-source Loopback1
  address-family ipv4 unicast
   route-policy DROP-ALL in
   route-reflector-client
   route-policy V4_DEFAULT_ROUTE_DENY_OUT out
   soft-reconfiguration inbound always
  !
 !
 neighbor 142.251.195.24
  remote-as 15169
  <secret hidden>
  description "PNI | Google | AS15169"
  address-family ipv4 unicast
   maximum-prefix 15000 85
   route-policy V4_GOOGLE_IN_ACTIVE in
   route-policy V4_GOOGLE_OUT_ACTIVE out
   remove-private-AS
   soft-reconfiguration inbound always
  !
 !
 neighbor 210.173.184.16
  remote-as 8075
  use neighbor-group V4-JPNAP
  description "IX | JPNAP | MICROSOFT-1 | AS8075"
  address-family ipv4 unicast
   maximum-prefix 2000 75
  !
 !
 neighbor 210.173.184.26
  remote-as 8075
  use neighbor-group V4-JPNAP
  description "IX | JPNAP | MICROSOFT-2 | AS8075"
  address-family ipv4 unicast
   maximum-prefix 2000 75
  !
 !
 neighbor 210.173.184.33
  remote-as 18081
  use neighbor-group V4-JPNAP
  description "IX | JPNAP | KCN | AS18081"
  address-family ipv4 unicast
   maximum-prefix 75 75
  !
 !
 neighbor 210.173.184.40
  remote-as 2519
  use neighbor-group V4-JPNAP
  <secret hidden>
  description "IX | JPNAP | ARTERIA | AS2519"
  address-family ipv4 unicast
   maximum-prefix 3000 75
  !
 !
 neighbor 210.173.184.42
  remote-as 24255
  use neighbor-group V4-JPNAP
  description "IX | JPNAP | T-CATV | AS24255"
  address-family ipv4 unicast
   maximum-prefix 100 75
  !
 !
 neighbor 210.173.184.53
  remote-as 9605
  use neighbor-group V4-JPNAP
  description "IX | JPNAP | XI-DOCOMO-1 | AS9605"
  address-family ipv4 unicast
   maximum-prefix 2000 75
  !
 !
 neighbor 210.173.184.59
  remote-as 16509
  use neighbor-group V4-JPNAP
  description "IX | JPNAP | AMAZON | AS16509"
  address-family ipv4 unicast
   maximum-prefix 5000 75
  !
 !
 neighbor 210.173.184.60
  remote-as 9605
  use neighbor-group V4-JPNAP
  description "IX | JPNAP | XI-DOCOMO-2 | AS9605"
  address-family ipv4 unicast
   maximum-prefix 2000 75
  !
 !
 neighbor 210.173.184.61
  remote-as 16509
  use neighbor-group V4-JPNAP
  description "IX | JPNAP | AMAZON | AS16509"
  address-family ipv4 unicast
   maximum-prefix 5000 75
  !
 !
 neighbor 210.173.184.63
  remote-as 8220
  use neighbor-group V4-JPNAP
  description "IX | JPNAP | AS-COLT | AS8220"
  address-family ipv4 unicast
   maximum-prefix 200000 75
  !
 !
 neighbor 210.173.184.71
  remote-as 13335
  use neighbor-group V4-JPNAP
  description IX | JPNAP | CLOUDFLARE | AS13335
  address-family ipv4 unicast
   maximum-prefix 80000 85
  !
 !
 neighbor 210.173.184.87
  remote-as 54113
  use neighbor-group V4-JPNAP
  description "IX | JPNAP | FASTLY-1 | AS54113"
  address-family ipv4 unicast
   maximum-prefix 1000 75
  !
 !
 neighbor 210.173.184.89
  remote-as 54113
  use neighbor-group V4-JPNAP
  description "IX | JPNAP | FASTLY-2 | AS54113"
  address-family ipv4 unicast
   maximum-prefix 1000 75
  !
 !
 neighbor 210.173.184.92
  remote-as 20940
  use neighbor-group V4-JPNAP
  description "S-OUT | IX | JPNAP | AKAMAI | AS20940 | TRANP#37547"
  address-family ipv4 unicast
   maximum-prefix 10000 75
   route-policy DROP-ALL in
   route-policy DROP-ALL out
  !
 !
 neighbor 104.241.192.206
  remote-as 54058
  bfd fast-detect
  description "PNI | cr1-osa4 | AS54058 | RBN"
  address-family ipv4 unicast
   maximum-prefix 100 75
   route-policy V4_RBN_IN_ACTIVE in
   route-policy V4_RBN_OUT_ACTIVE out
   remove-private-AS
   soft-reconfiguration inbound always
  !
 !
 neighbor 210.173.171.185
  remote-as 2497
  <secret hidden>
  description "TRANSIT | IIJ | AS2497 | Full Table"
  update-source Bundle-Ether5.223
  address-family ipv4 unicast
   maximum-prefix 1100000 90
   route-policy V4_IIJ_IN_ACTIVE in
   route-policy V4_IIJ_OUT_ACTIVE out
   remove-private-AS
   soft-reconfiguration inbound always
  !
 !
 neighbor 210.173.184.101
  remote-as 45686
  use neighbor-group V4-JPNAP
  <secret hidden>
  description "IX | JPNAP | RouteServer-1 | AS4568"
  enforce-first-as disable
  address-family ipv4 unicast
   maximum-prefix 200000 75
  !
 !
 neighbor 210.173.184.102
  remote-as 45686
  use neighbor-group V4-JPNAP
  <secret hidden>
  description "IX | JPNAP | RouteServer-2 | AS4568"
  enforce-first-as disable
  address-family ipv4 unicast
   maximum-prefix 200000 75
  !
 !
 neighbor 210.173.184.171
  remote-as 13335
  use neighbor-group V4-JPNAP
  description IX | JPNAP | CLOUDFLARE | AS13335
  address-family ipv4 unicast
   maximum-prefix 80000 85
  !
 !
 neighbor 2403:400:100::220
  remote-as 23820
  <secret hidden>
  description "IC | gw02-tyo3 | AS23820 | Full Table"
  update-source Loopback1
  ! description ### gw02-tyo3 ###
  address-family ipv6 unicast
   maximum-prefix 4000000 75
   route-policy PASS-ALL in
   route-policy PASS-ALL out
   soft-reconfiguration inbound always
  !
 !
 neighbor 2403:400:100::221
  remote-as 23820
  <secret hidden>
  description "IC | gw02-tyo4 | AS23820 | Full Table"
  update-source Loopback1
  ! description ### gw02-tyo4 ###
  address-family ipv6 unicast
   maximum-prefix 4000000 75
   route-policy PASS-ALL in
   route-policy PASS-ALL out
   soft-reconfiguration inbound always
  !
 !
 neighbor 2403:400:100::238
  remote-as 23820
  <secret hidden>
  description "IC | gw01-tyo3 | AS23820 | Full Table"
  update-source Loopback1
  ! description ### gw01-tyo3 ###
  address-family ipv6 unicast
   maximum-prefix 4000000 75
   route-policy PASS-ALL in
   route-policy PASS-ALL out
   soft-reconfiguration inbound always
  !
 !
 neighbor 2403:400:100::239
  remote-as 23820
  <secret hidden>
  description "IC | gw01-tyo4 | AS23820 | Full Table"
  update-source Loopback1
  ! description ### gw01-tyo4 ###
  address-family ipv6 unicast
   maximum-prefix 4000000 75
   route-policy PASS-ALL in
   route-policy PASS-ALL out
   soft-reconfiguration inbound always
  !
 !
 neighbor 2403:400:100::241
  remote-as 23820
  <secret hidden>
  description "IC | gw02-osa2 | AS23820 | Full Table"
  update-source Loopback1
  ! description ### gw02-osa2 ###
  address-family ipv6 unicast
   maximum-prefix 4000000 75
   route-policy PASS-ALL in
   route-policy PASS-ALL out
   soft-reconfiguration inbound always
  !
 !
 neighbor 2001:4860:1:1::3168
  remote-as 15169
  <secret hidden>
  description "PNI | Google-PNI | AS15169"
  address-family ipv6 unicast
   maximum-prefix 10000 85
   route-policy V6_GOOGLE_IN_ACTIVE in
   route-policy V6_GOOGLE_OUT_ACTIVE out
   remove-private-AS
   soft-reconfiguration inbound always
  !
 !
 neighbor 2001:7fa:7:2::2519:1
  remote-as 2519
  use neighbor-group V6-JPNAP
  <secret hidden>
  description "IX | JPNAP | ARTERIA | AS2519"
  address-family ipv6 unicast
   maximum-prefix 200 75
  !
 !
 neighbor 2001:7fa:7:2::8075:1
  remote-as 8075
  use neighbor-group V6-JPNAP
  description "IX | JPNAP | MICROSOFT-1 | AS8075"
  address-family ipv6 unicast
   maximum-prefix 500 75
  !
 !
 neighbor 2001:7fa:7:2::8075:2
  remote-as 8075
  use neighbor-group V6-JPNAP
  description "IX | JPNAP | MICROSOFT-2 | AS8075"
  address-family ipv6 unicast
   maximum-prefix 500 75
  !
 !
 neighbor 2001:7fa:7:2::8220:1
  remote-as 8220
  use neighbor-group V6-JPNAP
  description "IX | JPNAP | AS-COLT-1 | AS8220"
  address-family ipv6 unicast
   maximum-prefix 2000 75
  !
 !
 neighbor 2001:7fa:7:2::9605:1
  remote-as 9605
  use neighbor-group V6-JPNAP
  description "IX | JPNAP | XI-DOCOMO-1 | AS9605"
  address-family ipv6 unicast
   maximum-prefix 1000 75
  !
 !
 neighbor 2001:7fa:7:2::9605:2
  remote-as 9605
  use neighbor-group V6-JPNAP
  description "IX | JPNAP | XI-DOCOMO-2 | AS9605"
  address-family ipv6 unicast
   maximum-prefix 1000 75
  !
 !
 neighbor 2001:7fa:7:2223::edfa
  remote-as 2497
  <secret hidden>
  description "TRANSIT | IIJ | AS2497 | Full Table"
  update-source Bundle-Ether5.223
  address-family ipv6 unicast
   maximum-prefix 270000 85
   route-policy V6_IIJ_IN_ACTIVE in
   route-policy V6_IIJ_OUT_ACTIVE out
   next-hop-self
   remove-private-AS
   soft-reconfiguration inbound always
  !
 !
 neighbor 2a07:4e40:f600:1008::
  remote-as 54058
  bfd fast-detect
  description "PNI | cr1-osa4 | AS54058 | RBN"
  address-family ipv6 unicast
   maximum-prefix 100 75
   route-policy V6_RBN_IN_ACTIVE in
   route-policy V6_RBN_OUT_ACTIVE out
   remove-private-AS
   soft-reconfiguration inbound always
  !
 !
 neighbor 2001:7fa:7:2:0:2:940:2
  remote-as 20940
  use neighbor-group V6-JPNAP
  description S-OUT | IX | JPNAP | AKAMAI | AS20940 | TRANP#37547
  address-family ipv6 unicast
   maximum-prefix 10000 75
   route-policy DROP-ALL in
   route-policy DROP-ALL out
  !
 !
 neighbor 2403:400:100:3693::115
  remote-as 65181
  description "IC | bbsw01-osa2 | AS65181 | Internal Routes"
  address-family ipv6 unicast
   route-policy V6_DEFAULT_ROUTE_DENY in
   route-policy V6_DEFAULT_ROUTE_PERMIT out
   default-originate
   soft-reconfiguration inbound always
  !
 !
 neighbor 2403:400:100:3694::117
  remote-as 65181
  description "IC | bbsw02-osa2 | AS65181 | Internal Routes"
  address-family ipv6 unicast
   route-policy V6_DEFAULT_ROUTE_DENY in
   route-policy V6_DEFAULT_ROUTE_PERMIT out
   default-originate
   soft-reconfiguration inbound always
  !
 !
 neighbor 2001:7fa:7:2:0:1:3335:1
  remote-as 13335
  use neighbor-group V6-JPNAP
  description IX | JPNAP | CLOUDFLARE | AS13335
  address-family ipv6 unicast
   maximum-prefix 30000 85
  !
 !
 neighbor 2001:7fa:7:2:0:1:3335:2
  remote-as 13335
  use neighbor-group V6-JPNAP
  description IX | JPNAP | CLOUDFLARE | AS13335
  address-family ipv6 unicast
   maximum-prefix 30000 85
  !
 !
 neighbor 2001:7fa:7:2:0:1:6509:1
  remote-as 16509
  use neighbor-group V6-JPNAP
  description "IX | JPNAP | AMAZON-1 | AS16509"
  address-family ipv6 unicast
   maximum-prefix 2000 75
  !
 !
 neighbor 2001:7fa:7:2:0:1:6509:2
  remote-as 16509
  use neighbor-group V6-JPNAP
  description "IX | JPNAP | AMAZON-1 | AS16509"
  address-family ipv6 unicast
   maximum-prefix 2000 75
  !
 !
 neighbor 2001:7fa:7:2:0:1:8081:1
  remote-as 18081
  use neighbor-group V6-JPNAP
  description "IX | JPNAP | KCN-1 | AS18081"
  address-family ipv6 unicast
   maximum-prefix 75 75
  !
 !
 neighbor 2001:7fa:7:2:0:2:4255:1
  remote-as 24255
  use neighbor-group V6-JPNAP
  description "IX | JPNAP | T-CATV | AS24255"
  address-family ipv6 unicast
   maximum-prefix 100 75
  !
 !
 neighbor 2001:7fa:7:2:0:4:5686:1
  remote-as 45686
  use neighbor-group V6-JPNAP
  <secret hidden>
  description "IX | JPNAP | RouteServer-1 | AS45686"
  enforce-first-as disable
  address-family ipv6 unicast
   maximum-prefix 20000 75
  !
 !
 neighbor 2001:7fa:7:2:0:4:5686:2
  remote-as 45686
  use neighbor-group V6-JPNAP
  <secret hidden>
  description "IX | JPNAP | RouteServer-2 | AS45686"
  enforce-first-as disable
  address-family ipv6 unicast
   maximum-prefix 20000 75
  !
 !
 neighbor 2001:7fa:7:2:0:5:4113:1
  remote-as 54113
  use neighbor-group V6-JPNAP
  description "IX | JPNAP | FASTLY-1 | AS54113"
  address-family ipv6 unicast
   maximum-prefix 1000 75
  !
 !
 neighbor 2001:7fa:7:2:0:5:4113:2
  remote-as 54113
  use neighbor-group V6-JPNAP
  description "IX | JPNAP | FASTLY-2 | AS54113"
  address-family ipv6 unicast
   maximum-prefix 1000 75
  !
 !
 neighbor 240b:c020:115::8224:0:0
  remote-as 138384
  bfd fast-detect
  <secret hidden>
  description "TRANSIT | RMI | AS138384 | Full Table"
  update-source Bundle-Ether1.3192
  address-family ipv6 unicast
   maximum-prefix 270000 85
   route-policy V6_RMI_IN_ACTIVE in
   route-policy V6_RMI_OUT_ACTIVE out
   remove-private-AS
   soft-reconfiguration inbound always
  !
 !
!
ssh server vrf MGMT
hw-module fib ipv4 scale host-optimized-disable
hw-module profile qos hqos-enable
hw-module profile stats acl-permit
end

