# 从神机规则的surge配置文件提取的url rewrite
{%- import "surgeTextUtil.tpl" as textUtil -%}
{%- set connersHuaSurge3 = remoteSnippets.connersHuaSurge3.text -%}
{{- textUtil.getURLRewrite(connersHuaSurge3).replace('x24795.html', 'x24795.html 302') }}