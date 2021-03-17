# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ZABBIX_AGENT with context %}

zabbix-agent-pod-destroy:
  cmd.run:
    - name: podman pod rm --force zabbix-agent-pod
    - runas: {{ ZABBIX_AGENT.hostuser.name }}
