# docker-container-dhcp
setup dhcp for docker container by using pipework 


## Setup
download getMAC.sh to /usr/local/bin/getMAC.sh , and chmod +x 
```
wget https://raw.githubusercontent.com/whylu/docker-container-dhcp/master/getMAC.sh -O /usr/local/bin/getMAC.sh --no-check-certificate
chmod +x /usr/local/bin/getMAC.sh
```

## usage
```
getMAC.sh ${containerName}

pipework $ETH $CONTAINER_NAME dhclient $(getMAC.sh ${CONTAINER_NAME})
```
EX:
```
pipework eth0 test_kafka dhclient $(getMAC.sh test_kafka)
```
test_kafka is my container name

AND find you ip by 
```
cat /var/lib/dhclient/dhclient.leases
```

## MAC for container
MAC for container save at folder ${MAC_FOLDER} which default at /opt/.containerMac
