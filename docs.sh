#!/usr/bin/env bash
#
# This script uses ansible-role-docs to generate the README.md file
#
# ansible-role-docs can be installed using:
#
# pipx install git+https://gitlab.com/kpfleming/ansible-role-docs.git

ansible-role-docs --output-file VARIABLES.md --output-mode replace --output-template VARIABLES.j2 . markdown
