# Ansible WordPress Command Line Interface (WP-CLI) Role

[![pipeline status](https://git.coop/webarch/wpcli/badges/master/pipeline.svg)](https://git.coop/webarch/wpcli/-/commits/master)

This repository contains an Ansible role for installing and upgrading
[WP-CLI](https://wp-cli.org/) on Debian and Ubuntu servers.

This role:

* Checks the latest version of WP-CLI available on GitHub.
* Installs or upgrades WP-CLI, an upgrade is done only if the installed version
  is older than the required or the latest available version.
* If WP-CLI is already present in a directory in the in the default `PATH` then
  the same location will be used when upgrading.
* Checks the GPG signature of WP-CLI after downloding it.
* Checks that WP-CLI works before installing it.
* Installs completion for the Bash shell for WP-CLI.

## Requirements

## Role Variables

There are ten [default variables](defaults/main.yml), these should only need
changing if this role isn't run as `root` and you wish to install WP-CLI into a
users `~/bin`, `the wpcli_bash_completion_dir`, `wpcli_bin` and
`wpcli_download_dir` directories need to be writable by the `wpcli_owner`.

All the variables, including internal ones are documented below:

### Entrypoint: main

The main entry point for the WP-CLI role.

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| wpcli | Run the tasks in this role | bool | yes | false |
| wpcli_bash_completion_dir | The directory into which the Bash completion will be installed. | str | yes |  |
| wpcli_bin | The directory into which WP-CLI will be installed. | str | yes |  |
| wpcli_download_dir | The directory used for downloading files. | str | yes |  |
| wpcli_gpg_import | An internl variable for the gpg import key results. | dict | no |  |
| wpcli_gpg_keys | An internal list of WP-CLI versions and the GPG key ID used to sign the release. | list of dicts of 'wpcli_gpg_keys' options | yes |  |
| wpcli_gpg_verify | Use GPG to verify WP-CLI. | bool | yes | false |
| wpcli_group | The group for the WP-CLI files. | str | yes |  |
| wpcli_name | The file name of the WP-CLI executable. | str | yes |  |
| wpcli_owner | The owner of the WP-CLI files. | str | yes |  |
| wpcli_path | An internal variable for the full path to the WP-CLI executable. | str | yes |  |
| wpcli_pkgs_present | A list of .deb packages that this role requires. | list of 'str' | yes |  |
| wpcli_verify | Verify variables that start with wpcli_ using the argument specification. | bool | yes | false |
| wpcli_version | A version number for WP-CLI or latest for the latest version. | str | yes |  |

#### Options for main > wpcli_gpg_keys

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| id | A GPG ID corresponding to a file name for the GPG public key. | str | yes |  |
| ver | A WP-CLI version number. | str | yes |  |



The GPG public keys in the files directory were copied from [this blog
post](https://make.wordpress.org/cli/2018/05/31/gpg-signature-change/).

The primary URL of this repo is
[`https://git.coop/webarch/wpcli`](https://git.coop/webarch/wpcli) however it
is also [mirrored to
GitHub](https://github.com/webarch-coop/ansible-role-wpcli) and [available via
Ansible Galaxy](https://galaxy.ansible.com/chriscroome/wpcli).

See the [GitLab releases page](https://git.coop/webarch/wpcli/-/releases) for
details regarding each version, *please use a specific version* since the
master branch is used for development.

## Dependencies

This role can also be used with the [localhost
repo](https://git.coop/webarch/localhost) to install WP-CLI locally, see also
the [WordPress role](https://git.coop/webarch/wordpress).

## Example Playbook

TODO

## License

TODO

## Author Information

TODO
