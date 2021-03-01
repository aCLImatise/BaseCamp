class: CommandLineTool
id: ansible.cwl
inputs:
- id: in_args
  doc: module arguments
  type: string?
  inputBinding:
    prefix: --args
- id: in_ask_become_pass
  doc: ask for privilege escalation password
  type: boolean?
  inputBinding:
    prefix: --ask-become-pass
- id: in_ask_pass
  doc: ask for SSH password
  type: boolean?
  inputBinding:
    prefix: --ask-pass
- id: in_ask_su_pass
  doc: ask for su password (deprecated, use become)
  type: boolean?
  inputBinding:
    prefix: --ask-su-pass
- id: in_ask_sudo_pass
  doc: ask for sudo password (deprecated, use become)
  type: boolean?
  inputBinding:
    prefix: --ask-sudo-pass
- id: in_ask_vault_pass
  doc: ask for vault password
  type: boolean?
  inputBinding:
    prefix: --ask-vault-pass
- id: in_background
  doc: "run asynchronously, failing after X seconds\n(default=N/A)"
  type: string?
  inputBinding:
    prefix: --background
- id: in_become
  doc: run operations with become (nopasswd implied)
  type: boolean?
  inputBinding:
    prefix: --become
- id: in_become_method
  doc: "privilege escalation method to use (default=sudo),\nvalid choices: [ sudo\
    \ | su | pbrun | pfexec | runas ]"
  type: string?
  inputBinding:
    prefix: --become-method
- id: in_become_user
  doc: run operations as this user (default=None)
  type: string?
  inputBinding:
    prefix: --become-user
- id: in_check
  doc: "don't make any changes; instead, try to predict some\nof the changes that\
    \ may occur"
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_connection
  doc: connection type to use (default=smart)
  type: string?
  inputBinding:
    prefix: --connection
- id: in_extra_vars
  doc: set additional variables as key=value or YAML/JSON
  type: string?
  inputBinding:
    prefix: --extra-vars
- id: in_forks
  doc: "specify number of parallel processes to use\n(default=5)"
  type: long?
  inputBinding:
    prefix: --forks
- id: in_inventory_file
  doc: "specify inventory host file\n(default=/etc/ansible/hosts)"
  type: File?
  inputBinding:
    prefix: --inventory-file
- id: in_limit
  doc: further limit selected hosts to an additional pattern
  type: string?
  inputBinding:
    prefix: --limit
- id: in_list_hosts
  doc: "outputs a list of matching hosts; does not execute\nanything else"
  type: boolean?
  inputBinding:
    prefix: --list-hosts
- id: in_module_name
  doc: module name to execute (default=command)
  type: string?
  inputBinding:
    prefix: --module-name
- id: in_module_path
  doc: specify path(s) to module library (default=None)
  type: File?
  inputBinding:
    prefix: --module-path
- id: in_one_line
  doc: condense output
  type: boolean?
  inputBinding:
    prefix: --one-line
- id: in_poll
  doc: set the poll interval if using -B (default=15)
  type: long?
  inputBinding:
    prefix: --poll
- id: in_private_key
  doc: use this file to authenticate the connection
  type: File?
  inputBinding:
    prefix: --private-key
- id: in_su
  doc: run operations with su (deprecated, use become)
  type: boolean?
  inputBinding:
    prefix: --su
- id: in_su_user
  doc: "run operations with su as this user (default=root)\n(deprecated, use become)"
  type: string?
  inputBinding:
    prefix: --su-user
- id: in_sudo
  doc: "run operations with sudo (nopasswd) (deprecated, use\nbecome)"
  type: boolean?
  inputBinding:
    prefix: --sudo
- id: in_sudo_user
  doc: "desired sudo user (default=root) (deprecated, use\nbecome)"
  type: string?
  inputBinding:
    prefix: --sudo-user
- id: in_timeout
  doc: override the SSH timeout in seconds (default=10)
  type: long?
  inputBinding:
    prefix: --timeout
- id: in_tree
  doc: log output to this directory
  type: Directory?
  inputBinding:
    prefix: --tree
- id: in_user
  doc: connect as this user (default=root)
  type: string?
  inputBinding:
    prefix: --user
- id: in_vault_password_file
  doc: vault password file
  type: File?
  inputBinding:
    prefix: --vault-password-file
- id: in_verbose
  doc: "verbose mode (-vvv for more, -vvvv to enable\nconnection debugging)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_host_pattern
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_tree
  doc: log output to this directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_tree)
hints: []
cwlVersion: v1.1
baseCommand:
- ansible
