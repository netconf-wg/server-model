pyang -f tree --tree-path=/netconf-server/session-options ../ietf-netconf-server\@*.yang > session-options-tree.txt 
pyang -f tree --tree-path=/netconf-server/call-home ../ietf-netconf-server\@*.yang > call-home-tree.txt 
pyang -f tree --tree-path=/netconf-server/listen ../ietf-netconf-server\@*.yang > listen-tree.txt 
pyang -f tree --tree-path=/netconf-server/ssh ../ietf-netconf-server\@*.yang > ssh-tree.txt 
pyang -f tree --tree-path=/netconf-server/tls ../ietf-netconf-server\@*.yang > tls-tree.txt 

pyang -f tree --tree-path=/restconf-server/listen ../ietf-restconf-server\@*.yang > restconf-listen-tree.txt 
pyang -f tree --tree-path=/restconf-server/call-home ../ietf-restconf-server\@*.yang > restconf-call-home-tree.txt 

