#!/bin/sh

cat <<EOF > nsd/zones.conf
pattern:
  name: "coredns"
  request-xfr: 172.21.53.10 NOKEY
  max-refresh-time: 5
  min-refresh-time: 5
EOF

for i in `seq 1 100`
do
cat <<EOF >> nsd/zones.conf
zone:
  name: "${i}.example.jp"
  include-pattern: "coredns"
EOF

done
