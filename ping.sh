#!/bin/bash
for subnet in $@
do
    for host in $(seq 1 254)
    do
        ping -c 1 -t 1 "$subnet.$host"
    done
done
