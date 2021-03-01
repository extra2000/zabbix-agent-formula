# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ZABBIX_AGENT with context %}

{{ ZABBIX_AGENT.configfile.destination }}:
  file.managed:
    - source: {{ ZABBIX_AGENT.configfile.source }}
    - template: jinja
    - context:
      config: {{ ZABBIX_AGENT.config }}
