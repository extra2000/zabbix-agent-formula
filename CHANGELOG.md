# Changelog

## [5.0.0](https://github.com/extra2000/zabbix-agent-formula/compare/v4.0.0...v5.0.0) (2021-05-14)


### ⚠ BREAKING CHANGES

* Naming scheme for pod has changed.

### Code Refactoring

* Prefix pod with `projectname` value ([bf0f7ae](https://github.com/extra2000/zabbix-agent-formula/commit/bf0f7ae432b0ee8f4161e813c171740b8e275e49))

## [4.0.0](https://github.com/extra2000/zabbix-agent-formula/compare/v3.0.0...v4.0.0) (2021-03-17)


### ⚠ BREAKING CHANGES

* Pillar format has changed.

### Fixes

* Redesign pillar configurations due to confusing values ([8b32eee](https://github.com/extra2000/zabbix-agent-formula/commit/8b32eeeb11d7698bccbb164053d33e01bbf641b8))
* **pod:** Add missing `ZBX_STARTAGENTS` environment ([52e63d0](https://github.com/extra2000/zabbix-agent-formula/commit/52e63d08d3c7f5f0ec400bf0aeb4148004c0efd5))

## [3.0.0](https://github.com/extra2000/zabbix-agent-formula/compare/v2.0.2...v3.0.0) (2021-03-17)


### ⚠ BREAKING CHANGES

* Zabbix agent deployment has changed into Podman pod only.

### Features

* Revamp deployment into Podman pod ([b532bd4](https://github.com/extra2000/zabbix-agent-formula/commit/b532bd46bcdd8199f3f1e87d41a1efae466e52f1))

### [2.0.2](https://github.com/extra2000/zabbix-agent-formula/compare/v2.0.1...v2.0.2) (2021-03-17)


### Styles

* **pillar, defaults.yaml:** Fix double quote placements ([15c1aa2](https://github.com/extra2000/zabbix-agent-formula/commit/15c1aa2cd0989376caf70e91e760e19fe98e6938))

### [2.0.1](https://github.com/extra2000/zabbix-agent-formula/compare/v2.0.0...v2.0.1) (2021-03-09)


### Fixes

* **selinux:** Add SELinux permissions for Zabbix agent ([2f0f212](https://github.com/extra2000/zabbix-agent-formula/commit/2f0f21206f7d37e246e2b83eefc28cfc94008023))

## [2.0.0](https://github.com/extra2000/zabbix-agent-formula/compare/v1.0.0...v2.0.0) (2021-03-08)


### ⚠ BREAKING CHANGES

* **pillar:** Pillar format for `zabbix_agent.config` have changed.

### Fixes

* **pillar:** Improve Zabbix configurations and differentiate between Zabbix agent passive checks and active checks configurations ([3c01940](https://github.com/extra2000/zabbix-agent-formula/commit/3c01940025123dec7fbadf63cdf2a6b0e5bb7b5c))

## 1.0.0 (2021-03-05)


### Features

* **salt:** Add implementations for `zabbix_agent/` ([917bbca](https://github.com/extra2000/zabbix-agent-formula/commit/917bbcaab0aa6b0ba1e1669e9e9140d3b73a201f))


### Continuous Integrations

* Add AppVeyor with `semantic-release` bot ([98f08b4](https://github.com/extra2000/zabbix-agent-formula/commit/98f08b42bbcb00504b2bd644e9c4bba8325f9730))


### Documentations

* **pillar:** Add `pillar.example` ([50c0bdd](https://github.com/extra2000/zabbix-agent-formula/commit/50c0bddbb2bb65997c582dfbe325e7a799fe6150))
* **README:** Update `README.md` ([9eee067](https://github.com/extra2000/zabbix-agent-formula/commit/9eee0679b75ccbf461f87330082a1598961abd09))
