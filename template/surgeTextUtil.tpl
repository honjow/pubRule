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