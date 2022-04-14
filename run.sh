#!/bin/bash

ansible-galaxy collection install -r requirements.yaml
ansible-playbook --ask-become-pass --ask-pass -i inventory.yaml $1
#ansible-playbook --ask-become-pass -i inventory.yaml $1
