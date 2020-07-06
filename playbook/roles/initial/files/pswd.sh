#!/bin/bash
#newpsd=`openssl rand 100 | base64 | head -c 10`
#echo ${newpsd} >/root/ops-pass
#echo "${newpsd}"|passwd --stdin root

echo "ops@2019"|passwd --stdin ops
echo "Ops@ops"|passwd --stdin ops
echo "bed@2019"|passwd --stdin bed
echo "bdd@2019"|passwd --stdin bdd
echo "qad@2019"|passwd --stdin qad

