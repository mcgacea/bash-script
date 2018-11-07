#!/bin/bash
for i in $(seq 1 254)
do
ping -c 1 -t 1 192.168.10.$i
done
