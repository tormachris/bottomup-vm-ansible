#!/bin/bash

ansible-galaxy install -r requirements.yaml
ansible-playbook --ask-become-pass -i inventory.yaml test.yaml