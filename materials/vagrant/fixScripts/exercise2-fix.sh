#!/bin/bash
#when trying to curl http://www.ascii-art.de/ascii/ab/007.txt you are receving an error "403 Forbidden" since the address in pointing to local host in the /etc/hosts file and needs to be removed
sudo sed -i.bak '/www.ascii-art.de/d' /etc/hosts