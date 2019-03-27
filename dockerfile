FROM centos:7

RUN yum install -y epel-release && yum install -y nfdump

ENTRYPOINT ["/usr/bin/nfcapd -E -p 9001 -w -l /home/logs"]
