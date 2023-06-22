# Webarchitects Ansible WordPress Command Line Interface (WP-CLI) Role

[![pipeline status](https://git.coop/webarch/wpcli/badges/master/pipeline.svg)](https://git.coop/webarch/wpcli/-/commits/master)

This repository contains an Ansible role for installing and upgrading
[WP-CLI](https://wp-cli.org/) on Debian and Ubuntu servers.

When run this role:

* Checks the latest version of WP-CLI available on GitHub.
* Checks the GPG signature of WP-CLI after downloading it.
* Checks that WP-CLI works before installing it.
* Installs completion for the Bash shell for WP-CLI.

## Role Variables

There are eleven [default variables](defaults/main.yml), set `wpcli` to `true`
for the tasks in this role to be run, the other defaults should only need
changing if this role isn't run as `root`.

Documentation for all the variables, including internal ones which you do not
need to set, follow, this documentation has been generated from the
[meta/argument_specs.yml](meta/argument_specs.yml).

### Entrypoint: main

The main entry point for the WP-CLI role.

|Option|Description|Type|Required|
|---|---|---|---|
| wpcli | Run the tasks in this role | bool | yes |
| wpcli_bash_completion_dir | The directory into which the Bash completion will be installed. | str | yes |
| wpcli_bin | The directory into which WP-CLI will be installed. | str | yes |
| wpcli_download_dir | The directory used for downloading files. | str | yes |
| wpcli_gpg_import | An internl variable for the gpg import key results. | dict | no |
| wpcli_gpg_key | An internal variable for the GPG key ID. | str | no |
| wpcli_gpg_keys | An internal list of WP-CLI versions and the GPG key ID used to sign the release. | list of dicts of 'wpcli_gpg_keys' options | yes |
| wpcli_gpg_verify | Use GPG to verify WP-CLI. | bool | yes |
| wpcli_gpg_verify_sig | An internal variable for the results of verifying the GPG signature. | dict | no |
| wpcli_group | The group for the WP-CLI files. | str | yes |
| wpcli_headers | An internal variable for the results of the HEAD request to check the latest WP-CLI versions available at GitHub. | dict | no |
| wpcli_installed | An internal variable for the installed version of WP-CLI. | str | no |
| wpcli_latest | An internal variable for the latest version of WP-CLI. | str | no |
| wpcli_name | The file name of the WP-CLI executable. | str | yes |
| wpcli_owner | The owner of the WP-CLI files. | str | yes |
| wpcli_path | An internal variable for the full path to the WP-CLI executable. | str | yes |
| wpcli_path_default | An internal variable for the full path to the default WP-CLI executable. | str | no |
| wpcli_required | An internal variable for the required version of WP-CLI. | str | no |
| wpcli_pkgs_present | A list of .deb packages that this role requires. | list of 'str' | yes |
| wpcli_verify | Verify variables that start with wpcli_ using the argument specification. | bool | yes |
| wpcli_version | A version number for WP-CLI or latest for the latest version. | str | yes |
| wpcli_version_check | An internal variable for the results of checking the installed version of WP-CLI. | dict | no |
| wpcli_which | An internal variable for the results of running which to get the WP-CLI path. | dict | no |

#### Options for main > wpcli_gpg_keys

|Option|Description|Type|Required|
|---|---|---|---|
| id | A GPG ID corresponding to a file name for the GPG public key. | str | yes |
| ver | A WP-CLI version number. | str | yes |



## Example Usage

This role can also be used with the [localhost
repo](https://git.coop/webarch/localhost) to install WP-CLI locally, see also
the [WordPress role](https://git.coop/webarch/wordpress).

Include this role and run itr as `root`:

```yaml
- name: Include wplic role as root
  ansible.builtin.include_role:
    name: wpcli
  vars:
    wpcli: true
```

Include this role and run it as a non-root user:

```yaml
- name: Include wpcli role as non-root user
  ansible.builtin.include_role:
    name: wpcli
  vars:
    wpcli: true
    wpcli_owner: ""
    wpcli_bin: "/.local/bin"
    wpcli_download_dir: /tmp
    wpcli_bash_completion_dir: ".bash_completion.d"
```

## Repository

The primary URL of this repo is
[`https://git.coop/webarch/wpcli`](https://git.coop/webarch/wpcli) however it
is also [mirrored to
GitHub](https://github.com/webarch-coop/ansible-role-wpcli) and [available via
Ansible Galaxy](https://galaxy.ansible.com/chriscroome/wpcli).

See the [GitLab releases page](https://git.coop/webarch/wpcli/-/releases) for
details regarding each version, *please use a specific version* since the
master branch is used for development.

## Copyright

Copyright 2019-2023 Chris Croome, &lt;[chris@webarchitects.co.uk](mailto:chris@webarchitects.co.uk)&gt;.

This role is released under [the same terms as Ansible itself](https://github.com/ansible/ansible/blob/devel/COPYING), the [GNU GPLv3](LICENSE).
