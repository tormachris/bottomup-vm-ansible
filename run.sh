#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ansible-galaxy collection install -r requirements.yaml
#ansible-playbook --ask-become-pass --ask-pass -i inventory.yaml $1
ANSIBLE_CONFIG="$SCRIPT_DIR/ansible.cfg" ansible-playbook -i inventory.yaml $1
