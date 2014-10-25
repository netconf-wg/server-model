#!/bin/sh

OUT=$1.tmp

cat > $OUT <<EOF
<rpc-reply message-id="101" xmlns="urn:ietf:params:xml:ns:netconf:base:1.0">
  <data>
EOF

cat $1 >> $OUT

cat >> $OUT <<EOF
  </data>
</rpc-reply>
EOF

yang2dsdl -t get-reply ../ietf-netconf-server.yang

xmllint --noout --relaxng ietf-netconf-server-get-reply.rng  $OUT 

rm $OUT
rm *.rng *.dsrl *.sch

