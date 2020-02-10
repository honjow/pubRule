{%- import "util/surgeTextUtil.tpl" as textUtil -%}
{%- import "util/constUtil.tpl" as constUtil -%}
{%- set connersHuaSurge3 = remoteSnippets.connersHuaSurge3.text -%}

# {{ downloadUrl }}
# https://gitlab.com/honjow/pubrule/-/raw/master/template/loon/shortcuts.json

[General]
skip-proxy=127.0.0.1,192.168.0.0/16,10.0.0.0/8,172.16.0.0/12,100.64.0.0/10,localhost,*.local,e.crashlytics.com,captive.apple.com,::ffff:0:0:0:0/1,::ffff:128:0:0:0/1
bypass-tun = 10.0.0.0/8,100.64.0.0/10,127.0.0.0/8,169.254.0.0/16,172.16.0.0/12,192.0.0.0/24,192.0.2.0/24,192.88.99.0/24,192.168.0.0/16,198.18.0.0/15,198.51.100.0/24,203.0.113.0/24,224.0.0.0/4,255.255.255.255/32
dns-server = 114.114.114.114, 202.141.176.93, 202.141.178.13, 119.29.29.29, 117.50.10.10, 223.5.5.5, 1.1.1.1, 119.28.28.28, system
allow-udp-proxy = false
host = 127.0.0.1

[Remote Proxy]
# 一行一个订阅，请把后面的url改为自己的订阅地址，只有一个订阅请删掉多余的行
sub = https://exp1.com/link/xxxxxx
sub2 = https://exp2.com/link/xxxxxxx

[Proxy]


[Remote Filter]
# Netflix节点组，请根据需要自行修改筛选条件
🎥NetflixNodes = NameRegex,sub, sub2, FilterKey = (netflix|Netflix|nf|NF|hkbn|hkt|hgc|nbu)

[Proxy Group]
# 下方的 sub, sub2为上方 [Remote Proxy] 中的订阅，请自行修改
📌 手动切换 = select, sub, sub2
♻️ 自动切换 = url-test, sub, sub2, url = http://www.qualcomm.cn/generate_204, interval = 600

🎬 YouTube = select, ♻️ 自动切换, 📌 手动切换, DIRECT
📺 Netflix = select, 🎥NetflixNodes, 📌 手动切换, DIRECT
💻 国外影视 = select, ♻️ 自动切换, 📌 手动切换, DIRECT
🌏 国外网站 = select, ♻️ 自动切换, 📌 手动切换, DIRECT
📽 国内视频 = select, DIRECT, 📌 手动切换
# 如果你拥有可以解锁网易音乐的节点，请自行添加到下方策略组
🎧 网易解锁 = select, DIRECT
🍎 苹果服务 = select, DIRECT, 📌 手动切换
# 🐟 漏网之鱼 = select, DIRECT, 📌 手动切换


[Rule]
#Type:DOMAIN-SUFFIX,DOMAIN,DOMAIN-KEYWORD,USER-AGENT,URL-REGEX,IP-CIDR


GEOIP,cn,DIRECT
FINAL,DIRECT

[Remote Rule]
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/LocalAreaNetwork.list, DIRECT
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanAD.list, REJECT
https://raw.githubusercontent.com/NobyDa/Script/master/Surge/AdRule.list, REJECT
https://raw.githubusercontent.com/ConnersHua/Profiles/master/Surge/Ruleset/Advertising.list, REJECT
https://raw.githubusercontent.com/ConnersHua/Profiles/master/Surge/Ruleset/Hijacking.list, REJECT
https://raw.githubusercontent.com/ConnersHua/Profiles/master/Surge/Ruleset/Apple.list, 🍎 苹果服务
https://raw.githubusercontent.com/fomooerking/WYMUSIC/master/WYYMusic.list, 🎧 网易解锁
https://raw.githubusercontent.com/ConnersHua/Profiles/master/Surge/Ruleset/DomesticMedia.list, 📽 国内视频
https://raw.githubusercontent.com/ConnersHua/Profiles/master/Surge/Ruleset/Media/Netflix.list, 📺 Netflix
https://raw.githubusercontent.com/ConnersHua/Profiles/master/Surge/Ruleset/Media/YouTube.list, 🎬 YouTube
https://raw.githubusercontent.com/ConnersHua/Profiles/master/Surge/Ruleset/ForeignMedia.list, 💻 国外影视
https://raw.githubusercontent.com/ConnersHua/Profiles/master/Surge/Ruleset/Global.list, 🌏 国外网站
https://raw.githubusercontent.com/ConnersHua/Profiles/master/Surge/Ruleset/China.list, DIRECT
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaCompanyIp.list, DIRECT
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaDomain.list, DIRECT


[URL Rewrite]
enable = true
{# {{ textUtil.getURLRewrite(connersHuaSurge3).replace('x24795.html', 'x24795.html 302') }} #}


[Remote Rewrite]
{{ getDownloadUrl('loonConnersHuaURLRewrite.conf') }}, 神机复写

[Mitm]
skip-server-cert-verify = false
enable = true

hostname = {{- textUtil.getHostname(connersHuaSurge3) }}
ca-passphrase = {{ constUtil.ca_passphrase }}
ca-p12 = {{ constUtil.ca_p12 }}
