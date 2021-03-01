# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ZABBIX_AGENT with context %}

zabbix-agentd-dead:
  service.dead:
    - name: {{ ZABBIX_AGENT.service.name }}
