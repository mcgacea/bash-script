#!/bin/bash
subnet=$1
if [ -z "$subnet"]; then
    echo "Inserisci subnet "
    read subnet
fi
for i in $(seq 1 254)
do
    ping -c1 -t 1 $subnet.$i
done
