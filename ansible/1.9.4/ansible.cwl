#!/usr/bin/env cwl-runner

baseCommand:
- ansible
class: CommandLineTool
cwlVersion: v1.0
id: ansible
inputs:
- doc: ''
  id: host_pattern
  inputBinding:
    position: 0
  type: string
- doc: module arguments
  id: args
  inputBinding:
    prefix: --args
  type: string
- doc: ask for privilege escalation password
  id: ask_become_pass
  inputBinding:
    prefix: --ask-become-pass
  type: boolean
- doc: ask for SSH password
  id: ask_pass
  inputBinding:
    prefix: --ask-pass
  type: boolean
- doc: ask for su password (deprecated, use become)
  id: ask_su_pass
  inputBinding:
    prefix: --ask-su-pass
  type: boolean
- doc: ask for sudo password (deprecated, use become)
  id: ask_sudo_pass
  inputBinding:
    prefix: --ask-sudo-pass
  type: boolean
- doc: ask for vault password
  id: ask_vault_pass
  inputBinding:
    prefix: --ask-vault-pass
  type: boolean
- doc: run asynchronously, failing after X seconds (default=N/A)
  id: background
  inputBinding:
    prefix: --background
  type: string
- doc: run operations with become (nopasswd implied)
  id: become
  inputBinding:
    prefix: --become
  type: boolean
- doc: 'privilege escalation method to use (default=sudo), valid choices: [ sudo |
    su | pbrun | pfexec | runas ]'
  id: become_method
  inputBinding:
    prefix: --become-method
  type: string
- doc: run operations as this user (default=None)
  id: become_user
  inputBinding:
    prefix: --become-user
  type: string
- doc: don't make any changes; instead, try to predict some of the changes that may
    occur
  id: check
  inputBinding:
    prefix: --check
  type: boolean
- doc: connection type to use (default=smart)
  id: connection
  inputBinding:
    prefix: --connection
  type: string
- doc: set additional variables as key=value or YAML/JSON
  id: extra_vars
  inputBinding:
    prefix: --extra-vars
  type: string
- doc: specify number of parallel processes to use (default=5)
  id: forks
  inputBinding:
    prefix: --forks
  type: string
- doc: specify inventory host file (default=/etc/ansible/hosts)
  id: inventory_file
  inputBinding:
    prefix: --inventory-file
  type: string
- doc: further limit selected hosts to an additional pattern
  id: limit
  inputBinding:
    prefix: --limit
  type: string
- doc: outputs a list of matching hosts; does not execute anything else
  id: list_hosts
  inputBinding:
    prefix: --list-hosts
  type: boolean
- doc: module name to execute (default=command)
  id: module_name
  inputBinding:
    prefix: --module-name
  type: string
- doc: specify path(s) to module library (default=None)
  id: module_path
  inputBinding:
    prefix: --module-path
  type: string
- doc: condense output
  id: one_line
  inputBinding:
    prefix: --one-line
  type: boolean
- doc: set the poll interval if using -B (default=15)
  id: poll
  inputBinding:
    prefix: --poll
  type: string
- doc: use this file to authenticate the connection
  id: private_key
  inputBinding:
    prefix: --private-key
  type: string
- doc: run operations with su (deprecated, use become)
  id: su
  inputBinding:
    prefix: --su
  type: boolean
- doc: run operations with su as this user (default=root) (deprecated, use become)
  id: su_user
  inputBinding:
    prefix: --su-user
  type: string
- doc: run operations with sudo (nopasswd) (deprecated, use become)
  id: sudo
  inputBinding:
    prefix: --sudo
  type: boolean
- doc: desired sudo user (default=root) (deprecated, use become)
  id: sudo_user
  inputBinding:
    prefix: --sudo-user
  type: string
- doc: override the SSH timeout in seconds (default=10)
  id: timeout
  inputBinding:
    prefix: --timeout
  type: string
- doc: log output to this directory
  id: tree
  inputBinding:
    prefix: --tree
  type: string
- doc: connect as this user (default=ubuntu)
  id: user
  inputBinding:
    prefix: --user
  type: string
- doc: vault password file
  id: vault_password_file
  inputBinding:
    prefix: --vault-password-file
  type: string
- doc: verbose mode (-vvv for more, -vvvv to enable connection debugging)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
