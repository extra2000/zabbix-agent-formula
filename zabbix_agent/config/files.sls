# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ZABBIX_AGENT with context %}

/opt/zabbix_agent:
  file.directory:
    - user: {{ ZABBIX_AGENT.hostuser.name }}
    - group: {{ ZABBIX_AGENT.hostuser.group }}

/opt/zabbix_agent/zabbix-agent-pod.yaml:
  file.managed:
    - source: salt://zabbix_agent/files/zabbix-agent-pod.yaml.jinja
    - user: {{ ZABBIX_AGENT.hostuser.name }}
    - group: {{ ZABBIX_AGENT.hostuser.group }}
    - template: jinja
    - context:
      agent: {{ ZABBIX_AGENT }}
