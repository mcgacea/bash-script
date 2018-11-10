#!/bin/bash
for j in $*
do
subnet=$j
    for i in $(seq 1 254)
    do
        ping -c 1 -t 1 $subnet.$i
    done
done
