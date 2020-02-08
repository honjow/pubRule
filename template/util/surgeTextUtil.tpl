{%- macro getSnippet(snippetsText, name) %}
{{ snippetsText.split('[' +name+']')[1].split(r/\n\[/)[0] }}
{%- endmacro %}


{%- macro getHostname(snippetsText) %}
{{- snippetsText.split('hostname')[1].split('=')[1].split('\n')[0] }}
{%- endmacro %}

{%- macro getURLRewrite(snippetsText) %}
{{ getSnippet(snippetsText, 'URL Rewrite') }}
{%- endmacro %}

{%- macro getHeaderRewrite(snippetsText) %}
{{ getSnippet(snippetsText, 'Header Rewrite') }}
{%- endmacro %}

{%- macro getHost(snippetsText) %}
{{ getSnippet(snippetsText, 'Host') }}
{%- endmacro %}

{%- macro getScript(snippetsText) %}
{{ getSnippet(snippetsText, 'Script') }}
{%- endmacro %}


{%- macro getSurgeRule(snippetText, name) %}
{%- set items = snippetText.split('\n') %}
{%- for item in items %}
{%- if item.trim() === '' or item.startsWith('#') or item.startsWith('//') %}
{{ item }}
{%- else %}
{%- set rule = item.split(',') %}
{%- if rule.length >= 2 %}
{{ rule[0] }},{{ rule[1] }},{{ name }}
{%- endif %}
{%- endif %}
{%- endfor %}
{%- endmacro %}