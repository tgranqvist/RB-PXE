# jan/10/1970 00:03:27 by RouterOS 6.37.1
# software id = LYDA-CCSI
#
/interface bridge
add name=bridge
/interface ethernet
set [ find default-name=ether1 ] name=ether1-master
set [ find default-name=ether2 ] master-port=ether1-master
set [ find default-name=ether3 ] master-port=ether1-master
set [ find default-name=ether4 ] master-port=ether1-master
set [ find default-name=ether5 ] master-port=ether1-master
/ip pool
add name=dhcp_pool1 ranges=192.168.1.10-192.168.1.254
/ip dhcp-server
add address-pool=dhcp_pool1 disabled=no interface=bridge name=dhcp1
/interface bridge port
add bridge=bridge interface=ether1-master
/interface wireless cap
set discovery-interfaces=ether1-master interfaces=wlan1,wlan2
/ip address
add address=192.168.1.1 interface=ether1-master network=255.255.255.0
/ip dhcp-server network
add address=192.168.1.0/24 boot-file-name=pxelinux.0 gateway=192.168.1.1 \
    next-server=192.168.1.1
/ip route
add distance=1 gateway=bridge
/ip tftp
add ip-addresses=0.0.0.0/0 real-filename=disk1/ req-filename=.*
/system logging
add topics=tftp
/system routerboard settings
set cpu-frequency=720MHz protected-routerboot=disabled
