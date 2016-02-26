
# for keychain-based solution

pyang -p ../ -f tree ../ietf-keychain@*.yang > ietf-keychain-tree.txt.tmp
pyang -p ../ -f tree ../ietf-ssh-server\@*.yang > ietf-ssh-server-tree.txt.tmp
pyang -p ../ -f tree ../ietf-tls-server\@*.yang > ietf-tls-server-tree.txt.tmp
pyang -p ../ -f tree ../ietf-netconf-server\@*.yang > ietf-netconf-server-tree.txt.tmp
pyang -p ../ -f tree ../ietf-restconf-server\@*.yang > ietf-restconf-server-tree.txt.tmp

fold -w 71 ietf-keychain-tree.txt.tmp > ietf-keychain-tree.txt
fold -w 71 ietf-ssh-server-tree.txt.tmp > ietf-ssh-server-tree.txt
fold -w 71 ietf-tls-server-tree.txt.tmp > ietf-tls-server-tree.txt
fold -w 71 ietf-netconf-server-tree.txt.tmp > ietf-netconf-server-tree.txt
fold -w 71 ietf-restconf-server-tree.txt.tmp > ietf-restconf-server-tree.txt

rm *-tree.txt.tmp
