#!/bin/bash

useradd -m kitten

# Useless: the sudoer file comes from the repository
#echo "Cmnd_Alias GROOMER_CMDS = /home/kitten/kitten_mount_src, \
#    /home/kitten/kitten_mount_dst, /home/kitten/kitten_umount" >> /etc/sudoers
#echo "kitten  ALL=(ALL) NOPASSWD: GROOMER_CMDS" >> /etc/sudoers

# /!\ REMOVE SUDO RIGHTS TO USER pi
