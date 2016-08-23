#!/bin/sh

PRIVATE_SUBNET_NAME=$1
PRIVATE_SUBNET_CIDR=$2

echo "Provisionning script executed" > /log/extension.log

#create objects
setconf /usr/Firewall/ConfigFiles/object Network ${PRIVATE_SUBNET_NAME} ${PRIVATE_SUBNET_CIDR}

#set filtering and NAT
cat > /usr/Firewall/ConfigFiles/Filter/09 <<EOFILTER
[Filter]
pass from any on out to any port bootpc			# agent dhcp on out
pass from any on out to Firewall_out port ssh  	# ssh on out
pass from ${PRIVATE_SUBNET_NAME} to any			# Allow private subnet trafic
block from any to any

[NAT]
nat from ${PRIVATE_SUBNET_NAME} to any on out -> from Firewall_out port ephemeral_fw to original       	# Nat private subnet
EOFILTER

enfilter 09
