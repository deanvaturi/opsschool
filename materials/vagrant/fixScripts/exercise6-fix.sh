#!/bin/bash
env1="server1"
env2="server2"
hostname=$("hostname")
#Checks if the script received at least 2
if [ $# -lt 2 ]; then
    echo "Arguments count is less then 2 - Script is exiting"
    exit 0
fi 
#checks the hostname and add it to a var

if [ "$hostname" = "$env1" ]; then
    set_env="server2:"
else
    set_env="server1:"
fi

#runs the copy command with the proper arguments 
if [ $# -gt 0 ]
then
   eval last_arg=\$$#
else
   last_arg='<none>'
fi

all_args_but_last=$(echo $@ | awk 'NF-=1')
rsync -rv $all_args_but_last $set_env$last_arg | tail -n 1 | cut -d ' ' -f 4| sed 's/,//'