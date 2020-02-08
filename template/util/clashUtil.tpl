
{%- macro getPolicy(name, clshNodes, type) -%}
- name: {{ name }}
  type: {{ type if clshNodes.length > 0 else "select" }}
  proxies: {{ clshNodes | json if clshNodes.length > 0 else '["DIRECT"]' }}
{%- endmacro -%}

{%- macro getAutoPolicy(name, clshNodes, testUrl, type="url-test") -%}
{{- getPolicy(name, clshNodes, type) }}
  url: {{ testUrl }}
  interval: 1200
{%- endmacro -%}

{%- macro getSelPolicy(name, clshNodes) -%}
- name: {{ name }}
  type: select
  proxies: {{ clshNodes | json if clshNodes.length > 0 else '["DIRECT"]' }}
{%- endmacro -%}

