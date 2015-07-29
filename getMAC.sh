#!/bin/bash

MAC_FOLDER=/opt/.containerMac
if [ ! -d $MAC_FOLDER ]; then
    mkdir $MAC_FOLDER
fi

CONTAINER_NAME=$1

if [ ! -f $MAC_FOLDER/$CONTAINER_NAME ]; then
    #if mac not exist for this CONTAINER_NAME
    #gen mac and output
    macgen=$(openssl rand -hex 6 | sed 's/^\(..\)\(..\)\(..\)\(..\)\(..\).*$/b2:\1:\2:\3:\4:\5/')
    echo $macgen >> $MAC_FOLDER/$CONTAINER_NAME
fi

echo $(cat $MAC_FOLDER/$CONTAINER_NAME )
