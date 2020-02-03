{%- import "surgeTextUtil.tpl" as textUtil -%}
{%- set connersHuaSurge3 = remoteSnippets.connersHuaSurge3.text -%}
{{- textUtil.getURLRewrite(connersHuaSurge3).replace('x24795.html', 'x24795.html 302') }}