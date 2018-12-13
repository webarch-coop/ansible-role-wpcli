# Ansible Debian WordPress Command Line Interface Role 

This repository contains an Ansible role for installing [WP-CLI](https://wp-cli.org/) on Debian servers. 

To use this role you need to use Ansible Galaxy to install it into another repository under `galaxy/roles/wpcli` by adding a `requirements.yml` file in that repo that contains:

```yml
---
- name: wpcli
  src: https://git.coop/webarch/wpcli.git
  version: master
  scm: git
```

And a `ansible.cfg` that contains:

```
[defaults]
retry_files_enabled = False
pipelining = True
inventory = hosts.yml
roles_path = galaxy/roles

```

And a `.gitignore` containing:

```
roles/galaxy
```

To pull this repo in run:

```bash
ansible-galaxy install -r requirements.yml --force 
```

The other repo should also contain a `wpcli.yml` file that contains:

```yml
---
- name: Install WP CLI
  become: yes

  hosts:
    - wpcli_servers

  roles:
    - wpcli
```

And a `hosts.yml` file that contains lists of servers, for example:

```yml
---
all:
  children:
    wpcli_servers:
      hosts:
        host3.example.org:
        host4.example.org:
        cloud.example.com:
        cloud.example.org:
        cloud.example.net:
```

Then it can be run as follows:

```bash
ansible-playbook wpcli.yml 
```
