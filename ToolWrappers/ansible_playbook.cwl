class: CommandLineTool
id: ansible_playbook.cwl
inputs:
- id: in_ask_become_pass
  doc: ask for privilege escalation password
  type: boolean
  inputBinding:
    prefix: --ask-become-pass
- id: in_ask_pass
  doc: ask for SSH password
  type: boolean
  inputBinding:
    prefix: --ask-pass
- id: in_ask_su_pass
  doc: ask for su password (deprecated, use become)
  type: boolean
  inputBinding:
    prefix: --ask-su-pass
- id: in_ask_sudo_pass
  doc: ask for sudo password (deprecated, use become)
  type: boolean
  inputBinding:
    prefix: --ask-sudo-pass
- id: in_ask_vault_pass
  doc: ask for vault password
  type: boolean
  inputBinding:
    prefix: --ask-vault-pass
- id: in_become
  doc: run operations with become (nopasswd implied)
  type: boolean
  inputBinding:
    prefix: --become
- id: in_become_method
  doc: "privilege escalation method to use (default=sudo),\nvalid choices: [ sudo\
    \ | su | pbrun | pfexec | runas ]"
  type: string
  inputBinding:
    prefix: --become-method
- id: in_become_user
  doc: run operations as this user (default=None)
  type: string
  inputBinding:
    prefix: --become-user
- id: in_check
  doc: "don't make any changes; instead, try to predict some\nof the changes that\
    \ may occur"
  type: boolean
  inputBinding:
    prefix: --check
- id: in_connection
  doc: connection type to use (default=smart)
  type: string
  inputBinding:
    prefix: --connection
- id: in_diff
  doc: "when changing (small) files and templates, show the\ndifferences in those\
    \ files; works great with --check"
  type: boolean
  inputBinding:
    prefix: --diff
- id: in_extra_vars
  doc: set additional variables as key=value or YAML/JSON
  type: string
  inputBinding:
    prefix: --extra-vars
- id: in_flush_cache
  doc: clear the fact cache
  type: boolean
  inputBinding:
    prefix: --flush-cache
- id: in_force_handlers
  doc: run handlers even if a task fails
  type: boolean
  inputBinding:
    prefix: --force-handlers
- id: in_forks
  doc: "specify number of parallel processes to use\n(default=5)"
  type: long
  inputBinding:
    prefix: --forks
- id: in_inventory_file
  doc: "specify inventory host file\n(default=/etc/ansible/hosts)"
  type: File
  inputBinding:
    prefix: --inventory-file
- id: in_limit
  doc: further limit selected hosts to an additional pattern
  type: string
  inputBinding:
    prefix: --limit
- id: in_list_hosts
  doc: "outputs a list of matching hosts; does not execute\nanything else"
  type: boolean
  inputBinding:
    prefix: --list-hosts
- id: in_list_tags
  doc: list all available tags
  type: boolean
  inputBinding:
    prefix: --list-tags
- id: in_list_tasks
  doc: list all tasks that would be executed
  type: boolean
  inputBinding:
    prefix: --list-tasks
- id: in_module_path
  doc: specify path(s) to module library (default=None)
  type: File
  inputBinding:
    prefix: --module-path
- id: in_private_key
  doc: use this file to authenticate the connection
  type: File
  inputBinding:
    prefix: --private-key
- id: in_skip_tags
  doc: "only run plays and tasks whose tags do not match these\nvalues"
  type: string
  inputBinding:
    prefix: --skip-tags
- id: in_start_at_task
  doc: start the playbook at the task matching this name
  type: string
  inputBinding:
    prefix: --start-at-task
- id: in_step
  doc: 'one-step-at-a-time: confirm each task before running'
  type: boolean
  inputBinding:
    prefix: --step
- id: in_su
  doc: run operations with su (deprecated, use become)
  type: boolean
  inputBinding:
    prefix: --su
- id: in_su_user
  doc: "run operations with su as this user (default=root)\n(deprecated, use become)"
  type: string
  inputBinding:
    prefix: --su-user
- id: in_sudo
  doc: "run operations with sudo (nopasswd) (deprecated, use\nbecome)"
  type: boolean
  inputBinding:
    prefix: --sudo
- id: in_sudo_user
  doc: "desired sudo user (default=root) (deprecated, use\nbecome)"
  type: string
  inputBinding:
    prefix: --sudo-user
- id: in_syntax_check
  doc: "perform a syntax check on the playbook, but do not\nexecute it"
  type: boolean
  inputBinding:
    prefix: --syntax-check
- id: in_tags
  doc: only run plays and tasks tagged with these values
  type: string
  inputBinding:
    prefix: --tags
- id: in_timeout
  doc: override the SSH timeout in seconds (default=10)
  type: long
  inputBinding:
    prefix: --timeout
- id: in_user
  doc: connect as this user (default=root)
  type: string
  inputBinding:
    prefix: --user
- id: in_vault_password_file
  doc: vault password file
  type: File
  inputBinding:
    prefix: --vault-password-file
- id: in_verbose
  doc: "verbose mode (-vvv for more, -vvvv to enable\nconnection debugging)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_playbook_doty_ml
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ansible-playbook
