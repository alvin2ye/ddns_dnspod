git@github.com:alvin2ye/ddns_dnspod.git

# get domain id:
```
curl -k https://dnsapi.cn/Domain.List -d "login_email=alvin@agideo.com&login_password=xxx"
```
# get record id:

```
curl -k https://dnsapi.cn/Record.List -d "login_email=alvin@agideo.com&login_password=xxx&domain_id=999
```