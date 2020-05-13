class: CommandLineTool
id: ansible.cwl
inputs:
- id: host_pattern
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: args
  doc: module arguments
  type: string
  inputBinding:
    prefix: --args
- id: ask_become_pass
  doc: ask for privilege escalation password
  type: boolean
  inputBinding:
    prefix: --ask-become-pass
- id: ask_pass
  doc: ask for SSH password
  type: boolean
  inputBinding:
    prefix: --ask-pass
- id: ask_su_pass
  doc: ask for su password (deprecated, use become)
  type: boolean
  inputBinding:
    prefix: --ask-su-pass
- id: ask_sudo_pass
  doc: ask for sudo password (deprecated, use become)
  type: boolean
  inputBinding:
    prefix: --ask-sudo-pass
- id: ask_vault_pass
  doc: ask for vault password
  type: boolean
  inputBinding:
    prefix: --ask-vault-pass
- id: background
  doc: run asynchronously, failing after X seconds (default=N/A)
  type: string
  inputBinding:
    prefix: --background
- id: become
  doc: run operations with become (nopasswd implied)
  type: boolean
  inputBinding:
    prefix: --become
- id: become_method
  doc: 'privilege escalation method to use (default=sudo), valid choices: [ sudo |
    su | pbrun | pfexec | runas ]'
  type: string
  inputBinding:
    prefix: --become-method
- id: become_user
  doc: run operations as this user (default=None)
  type: string
  inputBinding:
    prefix: --become-user
- id: check
  doc: don't make any changes; instead, try to predict some of the changes that may
    occur
  type: boolean
  inputBinding:
    prefix: --check
- id: connection
  doc: connection type to use (default=smart)
  type: string
  inputBinding:
    prefix: --connection
- id: extra_vars
  doc: set additional variables as key=value or YAML/JSON
  type: string
  inputBinding:
    prefix: --extra-vars
- id: forks
  doc: specify number of parallel processes to use (default=5)
  type: string
  inputBinding:
    prefix: --forks
- id: inventory_file
  doc: specify inventory host file (default=/etc/ansible/hosts)
  type: string
  inputBinding:
    prefix: --inventory-file
- id: limit
  doc: further limit selected hosts to an additional pattern
  type: string
  inputBinding:
    prefix: --limit
- id: list_hosts
  doc: outputs a list of matching hosts; does not execute anything else
  type: boolean
  inputBinding:
    prefix: --list-hosts
- id: module_name
  doc: module name to execute (default=command)
  type: string
  inputBinding:
    prefix: --module-name
- id: module_path
  doc: specify path(s) to module library (default=None)
  type: string
  inputBinding:
    prefix: --module-path
- id: one_line
  doc: condense output
  type: boolean
  inputBinding:
    prefix: --one-line
- id: poll
  doc: set the poll interval if using -B (default=15)
  type: string
  inputBinding:
    prefix: --poll
- id: private_key
  doc: use this file to authenticate the connection
  type: string
  inputBinding:
    prefix: --private-key
- id: su
  doc: run operations with su (deprecated, use become)
  type: boolean
  inputBinding:
    prefix: --su
- id: su_user
  doc: run operations with su as this user (default=root) (deprecated, use become)
  type: string
  inputBinding:
    prefix: --su-user
- id: sudo
  doc: run operations with sudo (nopasswd) (deprecated, use become)
  type: boolean
  inputBinding:
    prefix: --sudo
- id: sudo_user
  doc: desired sudo user (default=root) (deprecated, use become)
  type: string
  inputBinding:
    prefix: --sudo-user
- id: timeout
  doc: override the SSH timeout in seconds (default=10)
  type: string
  inputBinding:
    prefix: --timeout
- id: tree
  doc: log output to this directory
  type: string
  inputBinding:
    prefix: --tree
- id: user
  doc: connect as this user (default=ubuntu)
  type: string
  inputBinding:
    prefix: --user
- id: vault_password_file
  doc: vault password file
  type: string
  inputBinding:
    prefix: --vault-password-file
- id: verbose
  doc: verbose mode (-vvv for more, -vvvv to enable connection debugging)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- ansible
