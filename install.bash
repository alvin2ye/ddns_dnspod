mkdir -p /opt/ddns_dnspod

CURRPATH=$(dirname $0)
cp $CURRPATH/* /opt/ddns_dnspod/

sudo ln -s /opt/ddns_dnspod/ddns_dnspod_deamon /etc/init.d/ddns_dnspod
sudo update-rc.d -f ddns_dnspod defaults
sudo /etc/init.d/ddns_dnspod start