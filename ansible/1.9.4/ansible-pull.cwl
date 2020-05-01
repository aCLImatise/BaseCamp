#!/usr/bin/env cwl-runner

baseCommand:
- ansible-pull
class: CommandLineTool
cwlVersion: v1.0
id: ansible-pull
inputs:
- doc: ''
  id: playbook_yml
  inputBinding:
    position: 0
  type: string
- doc: adds the hostkey for the repo url if not already added
  id: accept_host_key
  inputBinding:
    prefix: --accept-host-key
  type: boolean
- doc: ask for sudo password
  id: ask_sudo_pass
  inputBinding:
    prefix: --ask-sudo-pass
  type: boolean
- doc: branch/tag/commit to checkout.  Defaults to behavior of repository module.
  id: checkout
  inputBinding:
    prefix: --checkout
  type: string
- doc: directory to checkout repository to
  id: directory
  inputBinding:
    prefix: --directory
  type: string
- doc: set additional variables as key=value or YAML/JSON
  id: extra_vars
  inputBinding:
    prefix: --extra-vars
  type: string
- doc: run the playbook even if the repository could not be updated
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: modified files in the working git repository will be discarded
  id: git_force
  inputBinding:
    prefix: --git-force
  type: boolean
- doc: location of the inventory host file
  id: inventory_file
  inputBinding:
    prefix: --inventory-file
  type: string
- doc: Pass '-i <key_file>' to the SSH arguments used by git.
  id: key_file
  inputBinding:
    prefix: --key-file
  type: string
- doc: Module name used to check out repository.  Default is git.
  id: module_name
  inputBinding:
    prefix: --module-name
  type: string
- doc: only run the playbook if the repository has been updated
  id: only_if_changed
  inputBinding:
    prefix: --only-if-changed
  type: boolean
- doc: purge checkout after playbook run
  id: purge
  inputBinding:
    prefix: --purge
  type: boolean
- doc: sleep for random interval (between 0 and n number of seconds) before starting.
    this is a useful way to disperse git requests
  id: sleep
  inputBinding:
    prefix: --sleep
  type: string
- doc: only run plays and tasks tagged with these values
  id: tags
  inputBinding:
    prefix: --tags
  type: string
- doc: submodules will track the latest commit on their master branch (or other branch
    specified in .gitmodules). This is equivalent to specifying the --remote flag
    to git submodule update
  id: track_submodules
  inputBinding:
    prefix: --track-submodules
  type: boolean
- doc: URL of the playbook repository
  id: url
  inputBinding:
    prefix: --url
  type: string
- doc: vault password file
  id: vault_password_file
  inputBinding:
    prefix: --vault-password-file
  type: string
- doc: Pass -vvvv to ansible-playbook
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
