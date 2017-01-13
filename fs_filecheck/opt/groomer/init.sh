#!/bin/bash

# set -e (exit when a line returns non-0 status) and -x (xtrace) flags
set -e
set -x

# Import constants from config file
source ./config.sh

if [ ${ID} -ne 0 ]; then
    echo "GROOMER: This script has to be run as root."
    exit
fi

clean(){
    echo "GROOMER: cleaning up after init.sh."
    ${SYNC}
}

trap clean EXIT TERM INT

# List block storage devices (for debugging)
lsblk |& tee ${GROOM_LOG}

su ${USERNAME} -c ./mount_dest.sh |& tee -a ${GROOM_LOG}
