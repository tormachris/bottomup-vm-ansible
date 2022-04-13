#!/bin/bash

ansible-galaxy collection install -r requirements.yaml
ansible-playbook --ask-become-pass -i inventory.yaml $1 --ask-pass
