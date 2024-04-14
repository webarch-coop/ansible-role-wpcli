# Ansible Role: wpcli

## Requirements

| Platform | Versions |
| -------- | -------- |
| Debian | bookworm, bullseye |
| Ubuntu | jammy |

## Defaults

See [defaults/main.yml](defaults/main.yml).

## Role Variables

### Entrypoint: main

The main entry point for the WP-CLI role.

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| wpcli | Run the tasks in this role. | bool | yes | false |
| wpcli_apt_role | Use the apt role for local_facts. | bool | yes | false |
| wpcli_bash_completion_dir | The directory into which the Bash completion will be installed. | str | yes |  |
| wpcli_bin | The directory into which WP-CLI will be installed. | str | yes |  |
| wpcli_download_dir | The directory used for downloading files. | str | yes |  |
| wpcli_gpg_import | An internl variable for the gpg import key results. | dict | no |  |
| wpcli_gpg_key | An internal variable for the GPG key ID. | str | no |  |
| wpcli_gpg_keys | An internal list of WP-CLI versions and the GPG key ID used to sign the release. | list of dicts of 'wpcli_gpg_keys' options | yes |  |
| wpcli_gpg_verify | Use GPG to verify WP-CLI. | bool | yes | false |
| wpcli_gpg_verify_sig | An internal variable for the results of verifying the GPG signature. | dict | no |  |
| wpcli_group | The group for the WP-CLI files. | str | yes |  |
| wpcli_headers | An internal variable for the results of the HEAD request to check the latest WP-CLI versions available at GitHub. | dict | no |  |
| wpcli_installed | An internal variable for the installed version of WP-CLI. | str | no |  |
| wpcli_latest | An internal variable for the latest version of WP-CLI. | str | no |  |
| wpcli_name | The file name of the WP-CLI executable. | str | yes |  |
| wpcli_owner | The owner of the WP-CLI files. | str | yes |  |
| wpcli_path | An internal variable for the full path to the WP-CLI executable. | str | yes |  |
| wpcli_path_default | An internal variable for the full path to the default WP-CLI executable. | str | no |  |
| wpcli_required | An internal variable for the required version of WP-CLI. | str | no |  |
| wpcli_pkgs_present | A list of .deb packages that this role requires. | list of 'str' | yes |  |
| wpcli_verify | Verify variables that start with wpcli_ using the argument specification. | bool | yes | false |
| wpcli_version | A version number for WP-CLI or latest for the latest version. | str | yes |  |
| wpcli_version_check | An internal variable for the results of checking the installed version of WP-CLI. | dict | no |  |
| wpcli_which | An internal variable for the results of running which to get the WP-CLI path. | dict | no |  |

#### Options for main > wpcli_gpg_keys

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| id | A GPG ID corresponding to a file name for the GPG public key. | str | yes |  |
| ver | A WP-CLI version number. | str | yes |  |
