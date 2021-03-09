# -*- coding: utf-8 -*-
# vim: ft=sls

include:
  - .files
  {% if grains['os_family'] == 'RedHat' %}
  - .selinux
  {% endif %}
