# -*- coding: utf-8 -*-
# vim: ft=sls

/tmp/selinux-zabbix_agent/zabbix_agent.te:
  file.managed:
    - source: salt://zabbix_agent/files/zabbix_agent.te
    - makedirs: true
    - force: true

build_selinux_zabbix_agent_te_into_module:
  cmd.run:
    - name: checkmodule -M -m -o zabbix_agent.mod zabbix_agent.te
    - cwd: /tmp/selinux-zabbix_agent

build_zabbix_agent_te_module_into_pp_file:
  cmd.run:
    - name: semodule_package -o zabbix_agent.pp -m zabbix_agent.mod
    - cwd: /tmp/selinux-zabbix_agent
  
remove_existing_zabbix_agent_policy:
  cmd.run:
    - name: semodule -r zabbix_agent
    - success_retcodes:
      - "0"
      - "1"

load_zabbix_agent_pp_file:
  cmd.run:
    - name: semodule -i zabbix_agent.pp
    - cwd: /tmp/selinux-zabbix_agent
