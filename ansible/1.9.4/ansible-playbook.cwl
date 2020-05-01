#!/usr/bin/env cwl-runner

baseCommand:
- ansible-playbook
class: CommandLineTool
cwlVersion: v1.0
id: ansible-playbook
inputs:
- doc: ''
  id: playbook_yml
  inputBinding:
    position: 0
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
- doc: when changing (small) files and templates, show the differences in those files;
    works great with --check
  id: diff
  inputBinding:
    prefix: --diff
  type: boolean
- doc: set additional variables as key=value or YAML/JSON
  id: extra_vars
  inputBinding:
    prefix: --extra-vars
  type: string
- doc: clear the fact cache
  id: flush_cache
  inputBinding:
    prefix: --flush-cache
  type: boolean
- doc: run handlers even if a task fails
  id: force_handlers
  inputBinding:
    prefix: --force-handlers
  type: boolean
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
- doc: list all available tags
  id: list_tags
  inputBinding:
    prefix: --list-tags
  type: boolean
- doc: list all tasks that would be executed
  id: list_tasks
  inputBinding:
    prefix: --list-tasks
  type: boolean
- doc: specify path(s) to module library (default=None)
  id: module_path
  inputBinding:
    prefix: --module-path
  type: string
- doc: use this file to authenticate the connection
  id: private_key
  inputBinding:
    prefix: --private-key
  type: string
- doc: only run plays and tasks whose tags do not match these values
  id: skip_tags
  inputBinding:
    prefix: --skip-tags
  type: string
- doc: start the playbook at the task matching this name
  id: start_at_task
  inputBinding:
    prefix: --start-at-task
  type: string
- doc: 'one-step-at-a-time: confirm each task before running'
  id: step
  inputBinding:
    prefix: --step
  type: boolean
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
- doc: perform a syntax check on the playbook, but do not execute it
  id: syntax_check
  inputBinding:
    prefix: --syntax-check
  type: boolean
- doc: only run plays and tasks tagged with these values
  id: tags
  inputBinding:
    prefix: --tags
  type: string
- doc: override the SSH timeout in seconds (default=10)
  id: timeout
  inputBinding:
    prefix: --timeout
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
