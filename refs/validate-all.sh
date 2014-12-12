pyang --strict ../ietf-netconf-server.yang
./validate.sh ietf-netconf-server.yang ex-ssh.xml
./validate.sh ietf-netconf-server.yang ex-tls.xml

pyang --strict ../ietf-restconf-server.yang
./validate.sh ietf-restconf-server.yang ex-restconf-tls.xml


