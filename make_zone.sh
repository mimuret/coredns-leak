#!/bin/sh

DOMAIN=$1
NO=$2
if [ "$DOMAIN" = "" ] ; then
  DOMAIN="example.jp."
fi

if [ "$NO" = "" ] ; then
  NO=10000
fi

echo "${DOMAIN} 300 IN SOA localhost root 1 300 900 1814400 900"
echo "${DOMAIN} 300 IN NS localhost."
for i in `seq 1 ${NO}` ; do
  echo "${i}.${DOMAIN} 300 IN TXT \"${i}\""
done
