#!/bin/bash
#when trying to reach out to 208.86.224.90 you are actually reaching to 192.168.60.10 since there is an active route that needs to be deleted
sudo ip route del 208.86.224.90