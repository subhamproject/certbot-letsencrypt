#!/bin/bash

DOMAIN="devopsforall.tk"


if [[ $(aws route53 list-hosted-zones-by-name |grep $DOMAIN|wc -l) -lt 1 ]];then
aws route53 create-hosted-zone --name $DOMAIN --caller-reference "My-Domain-testing-$(date +%s)" --hosted-zone-config Comment="My Domain Testing"
fi
