class: CommandLineTool
id: ansible_pull.cwl
inputs:
- id: playbook_yml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: accept_host_key
  doc: adds the hostkey for the repo url if not already added
  type: boolean
  inputBinding:
    prefix: --accept-host-key
- id: ask_sudo_pass
  doc: ask for sudo password
  type: boolean
  inputBinding:
    prefix: --ask-sudo-pass
- id: checkout
  doc: branch/tag/commit to checkout.  Defaults to behavior of repository module.
  type: string
  inputBinding:
    prefix: --checkout
- id: directory
  doc: directory to checkout repository to
  type: string
  inputBinding:
    prefix: --directory
- id: extra_vars
  doc: set additional variables as key=value or YAML/JSON
  type: string
  inputBinding:
    prefix: --extra-vars
- id: force
  doc: run the playbook even if the repository could not be updated
  type: boolean
  inputBinding:
    prefix: --force
- id: git_force
  doc: modified files in the working git repository will be discarded
  type: boolean
  inputBinding:
    prefix: --git-force
- id: inventory_file
  doc: location of the inventory host file
  type: string
  inputBinding:
    prefix: --inventory-file
- id: key_file
  doc: Pass '-i <key_file>' to the SSH arguments used by git.
  type: string
  inputBinding:
    prefix: --key-file
- id: module_name
  doc: Module name used to check out repository.  Default is git.
  type: string
  inputBinding:
    prefix: --module-name
- id: only_if_changed
  doc: only run the playbook if the repository has been updated
  type: boolean
  inputBinding:
    prefix: --only-if-changed
- id: purge
  doc: purge checkout after playbook run
  type: boolean
  inputBinding:
    prefix: --purge
- id: sleep
  doc: sleep for random interval (between 0 and n number of seconds) before starting.
    this is a useful way to disperse git requests
  type: string
  inputBinding:
    prefix: --sleep
- id: tags
  doc: only run plays and tasks tagged with these values
  type: string
  inputBinding:
    prefix: --tags
- id: track_submodules
  doc: submodules will track the latest commit on their master branch (or other branch
    specified in .gitmodules). This is equivalent to specifying the --remote flag
    to git submodule update
  type: boolean
  inputBinding:
    prefix: --track-submodules
- id: url
  doc: URL of the playbook repository
  type: string
  inputBinding:
    prefix: --url
- id: vault_password_file
  doc: vault password file
  type: string
  inputBinding:
    prefix: --vault-password-file
- id: verbose
  doc: Pass -vvvv to ansible-playbook
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- ansible-pull
