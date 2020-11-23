#!/bin/sh

for i in `seq 1 100`
do
  ./make_zone.sh $i.example.jp > coredns/zones/$i.example.jp
done
