# Webarchitects Ansible WordPress Command Line Interface (WP-CLI) Role

[![pipeline status](https://git.coop/webarch/wpcli/badges/master/pipeline.svg)](https://git.coop/webarch/wpcli/-/commits/master)

This repository contains an Ansible role for installing and upgrading [WP-CLI](https://wp-cli.org/) on Debian and Ubuntu servers.

## Role Variables

See the [default variables](defaults/main.yml), set `wpcli` to `true` for the tasks in this role to be run, the other defaults should only need changing if this role isn't run as `root`.
r a specific version is required.

## Example Usage

This role can also be used with the [localhost repo](https://git.coop/webarch/localhost) to install WP-CLI locally, see also the [WordPress role](https://git.coop/webarch/wordpress).

Include this role and run it as `root`:

```yaml
- name: Include wpcli role as root
  ansible.builtin.include_role:
    name: wpcli
  vars:
    wpcli: true
```

Include this role and run it as a non-root user:

```yaml
- name: Include wpcli role as the foo user
  ansible.builtin.include_role:
    name: wpcli
  vars:
    wpcli: true
    wpcli_owner: "foo"
    wpcli_bin: "/home/foo/.local/bin"
    wpcli_download_dir: "/home/foo/tmp"
    wpcli_bash_completion_dir: "/home/foo/.bash_completion.d"
```

## Repository

The primary URL of this repo is [`https://git.coop/webarch/wpcli`](https://git.coop/webarch/wpcli) however it is also [mirrored to GitHub](https://github.com/webarch-coop/ansible-role-wpcli) and [available via Ansible Galaxy](https://galaxy.ansible.com/chriscroome/wpcli).

See the [GitLab releases page](https://git.coop/webarch/wpcli/-/releases) for details regarding each version, *please use a specific version* since the master branch is used for development.

## Copyright

Copyright 2018-2026 Chris Croome, &lt;[chris@webarchitects.co.uk](mailto:chris@webarchitects.co.uk)&gt;.

This role is released under [the same terms as Ansible itself](https://github.com/ansible/ansible/blob/devel/COPYING), the [GNU GPLv3](LICENSE).
