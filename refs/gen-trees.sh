#pyang -p ../ -f tree --tree-path=/netconf-server/session-options ../ietf-netconf-server\@*.yang > session-options-tree.txt 
#pyang -p ../ -f tree --tree-path=/netconf-server/call-home ../ietf-netconf-server\@*.yang > call-home-tree.txt 
#pyang -p ../ -f tree --tree-path=/netconf-server/listen ../ietf-netconf-server\@*.yang > listen-tree.txt 
#pyang -p ../ -f tree --tree-path=/netconf-server/ssh ../ietf-netconf-server\@*.yang > ssh-tree.txt 
#pyang -p ../ -f tree --tree-path=/netconf-server/tls ../ietf-netconf-server\@*.yang > tls-tree.txt 

#pyang -p ../ -f tree --tree-path=/restconf-server/listen ../ietf-restconf-server\@*.yang > restconf-listen-tree.txt 
#pyang -p ../ -f tree --tree-path=/restconf-server/call-home ../ietf-restconf-server\@*.yang > restconf-call-home-tree.txt 
#pyang -p ../ -f tree --tree-path=/restconf-server/client-cert-auth ../ietf-restconf-server\@*.yang > restconf-client-cert-auth-tree.txt 


# Current Solution
pyang -p ../ -f tree ../ietf-netconf-server\@*.yang > ietf-netconf-server-tree.txt
pyang -p ../ -f tree ../ietf-restconf-server\@*.yang > ietf-restconf-server-tree.txt

# Issue #49
pyang -p ../ -f tree ../ietf-keychain@*.yang > ietf-keychain-tree.txt
pyang -p ../ -f tree ../ietf-ssh-server-fake\@*.yang > ietf-ssh-server-tree.txt
pyang -p ../ -f tree ../ietf-tls-server-fake\@*.yang > ietf-tls-server-tree.txt
pyang -p ../ -f tree ../ietf-netconf-server-new\@*.yang > ietf-netconf-server-new-tree.txt
pyang -p ../ -f tree ../ietf-restconf-server-new\@*.yang > ietf-restconf-server-new-tree.txt
