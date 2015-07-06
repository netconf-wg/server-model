#!/bin/sh

OUT=$2.tmp

cat > $OUT <<EOF
<rpc-reply message-id="101" xmlns="urn:ietf:params:xml:ns:netconf:base:1.0">
  <data>
EOF

cat $2 >> $OUT

cat >> $OUT <<EOF
  </data>
</rpc-reply>
EOF

yang2dsdl -t get-reply ../$1

basename=`echo $1 | sed 's/\@.*//'`
xmllint --noout --relaxng $basename-get-reply.rng  $OUT 

rm $OUT
rm *.rng *.dsrl *.sch

