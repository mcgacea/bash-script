#!/bin/bash
echo -n > host_attivi.txt
for subnet in $@
do
    for host in $(seq 1 254)
    do
        ping -c 1 -t 2 "$subnet.$host"
        SUCCESS=$?
        if [ $SUCCESS -eq 0 ]
        then
            echo "$subnet.$host" >> host_attivi.txt
        fi
    done
done
