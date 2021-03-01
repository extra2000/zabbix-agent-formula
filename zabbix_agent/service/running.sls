# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ZABBIX_AGENT with context %}

include:
  - .dead

zabbix-agentd-running:
  service.running:
    - name: {{ ZABBIX_AGENT.service.name }}
    - enable: true
