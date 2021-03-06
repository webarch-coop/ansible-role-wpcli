# Ansible WordPress Command Line Interface (WP-CLI) Role 

[![pipeline status](https://git.coop/webarch/wpcli/badges/master/pipeline.svg)](https://git.coop/webarch/wpcli/-/commits/master)

This repository contains an Ansible role for installing and upgrading [WP-CLI](https://wp-cli.org/) on Debian and Ubuntu servers. 

This role:

* Checks the latest version of WP-CLI available on GitHub.
* Installs or upgrades WP-CLI, an upgrade is done only if the installed version is older than the latest available version.
* If WP-CLI is already present in a directory in the in the default `PATH` then the same location will be used when upgrading.
* Checks the GPG signature of WP-CLI after downloding it.
* Checks that WP-CLI works before installing it.
* Installs completion for the Bash shell for WP-CLI.

There are two [default variables](defaults/main.yml):

| Variable name        | Default value    | Comment                                            |
|----------------------|------------------|----------------------------------------------------|
| `wpcli_bin`          | `/usr/local/bin` | The directory into which WP-CLI will be installed. |
| `wpcli_download_dir` | `/root`          | The directory used for downloading files.          |


The primary URL of this repo is [`https://git.coop/webarch/wpcli`](https://git.coop/webarch/wpcli) however it is also [mirrored to GitHub](https://github.com/webarch-coop/ansible-role-wpcli) and [available via Ansible Galaxy](https://galaxy.ansible.com/chriscroome/wpcli).

See the [GitLab releases page](https://git.coop/webarch/wpcli/-/releases) for details regarding each version, *please use a specific version* since the master branch is used for development.

This role can also be used with the [localhost repo](https://git.coop/webarch/localhost) to install WP-CLI locally, see also the [WordPress role](https://git.coop/webarch/wordpress).
