# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ZABBIX_AGENT with context %}

zabbix-agent-image-present:
  cmd.run:
    - name: podman pull {{ ZABBIX_AGENT.image.name }}
    - retry:
        attempts: 10
        interval: 5
        until: true
    - runas: {{ ZABBIX_AGENT.hostuser.name }}

zabbix-agent-pod-destroy-if-exists:
  module.run:
    - state.sls:
      - mods:
        - zabbix_agent.service.destroy

zabbix-agent-pod-running:
  cmd.run:
    - name: podman play kube zabbix-agent-pod.yaml
    - cwd: /opt/zabbix_agent
    - runas: {{ ZABBIX_AGENT.hostuser.name }}
    - require:
      - cmd: zabbix-agent-image-present
      - module: zabbix-agent-pod-destroy-if-exists
