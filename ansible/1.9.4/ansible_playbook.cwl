class: CommandLineTool
id: ansible_playbook.cwl
inputs:
- id: playbook_yml
  doc: ''
  type: string
  inputBinding:
    position: 0
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
- id: diff
  doc: when changing (small) files and templates, show the differences in those files;
    works great with --check
  type: boolean
  inputBinding:
    prefix: --diff
- id: extra_vars
  doc: set additional variables as key=value or YAML/JSON
  type: string
  inputBinding:
    prefix: --extra-vars
- id: flush_cache
  doc: clear the fact cache
  type: boolean
  inputBinding:
    prefix: --flush-cache
- id: force_handlers
  doc: run handlers even if a task fails
  type: boolean
  inputBinding:
    prefix: --force-handlers
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
- id: list_tags
  doc: list all available tags
  type: boolean
  inputBinding:
    prefix: --list-tags
- id: list_tasks
  doc: list all tasks that would be executed
  type: boolean
  inputBinding:
    prefix: --list-tasks
- id: module_path
  doc: specify path(s) to module library (default=None)
  type: string
  inputBinding:
    prefix: --module-path
- id: private_key
  doc: use this file to authenticate the connection
  type: string
  inputBinding:
    prefix: --private-key
- id: skip_tags
  doc: only run plays and tasks whose tags do not match these values
  type: string
  inputBinding:
    prefix: --skip-tags
- id: start_at_task
  doc: start the playbook at the task matching this name
  type: string
  inputBinding:
    prefix: --start-at-task
- id: step
  doc: 'one-step-at-a-time: confirm each task before running'
  type: boolean
  inputBinding:
    prefix: --step
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
- id: syntax_check
  doc: perform a syntax check on the playbook, but do not execute it
  type: boolean
  inputBinding:
    prefix: --syntax-check
- id: tags
  doc: only run plays and tasks tagged with these values
  type: string
  inputBinding:
    prefix: --tags
- id: timeout
  doc: override the SSH timeout in seconds (default=10)
  type: string
  inputBinding:
    prefix: --timeout
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
- ansible-playbook
