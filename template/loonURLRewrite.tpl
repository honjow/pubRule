
{%- import "surgeTextUtil.tpl" as textUtil -%}
{%- set connersHuaSurge3 = remoteSnippets.connersHuaSurge3.text -%}
# 从神机规则的surge配置文件提取的url rewrite {{ downloadUrl }}

hostname = {{ textUtil.getHostname(connersHuaSurge3) }}

{{ textUtil.getURLRewrite(connersHuaSurge3)
| replace('x24795.html', 'x24795.html 302')
| replace('^https?:\\/\\/api\\.m\\.jd.com\\/client\\.action\\?functionId=(start|queryMaterialAdverts) - reject','')
| replace('reject', 'reject-200') }}