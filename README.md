# source

git@github.com:alvin2ye/ddns_dnspod.git


# conifg
```
cp ddns_dnspod.conf.sample ddns_dnspod.conf
vi ddns_dnspod.conf
```

### get domain id:

```
curl -k https://dnsapi.cn/Domain.List -d "login_email=alvin@agideo.com&login_password=xxx"
```
### get record id:

```
curl -k https://dnsapi.cn/Record.List -d "login_email=alvin@agideo.com&login_password=xxx&domain_id=999
```

### install

```
git clone https://github.com/alvin2ye/ddns_dnspod.git ddns_dnspod
cd ddns_dnspod
sudo mkdir -p /opt/ddns_dnspod
sudo cp * /opt/ddns_dnspod/
sudo ln -s /opt/ddns_dnspod/ddns_dnspod_deamon /etc/init.d/ddns_dnspod
sudo update-rc.d -f ddns_dnspod defaults
# sudo vi /opt/ddns_dnspod/ddns_dnspod.conf
sudo /etc/init.d/ddns_dnspod start
```

### uninstall

```
sudo update-rc.d -f ddns_dnspod remove
sudo rm /etc/init.d/ddns_dnspod
sudo rm /var/run/ddns_dnspod.pid
sudo rm -rf /opt/ddns_dnspod

```
