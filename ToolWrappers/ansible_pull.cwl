class: CommandLineTool
id: ansible_pull.cwl
inputs:
- id: in_accept_host_key
  doc: adds the hostkey for the repo url if not already added
  type: boolean
  inputBinding:
    prefix: --accept-host-key
- id: in_ask_sudo_pass
  doc: ask for sudo password
  type: boolean
  inputBinding:
    prefix: --ask-sudo-pass
- id: in_checkout
  doc: "branch/tag/commit to checkout.  Defaults to behavior\nof repository module."
  type: string
  inputBinding:
    prefix: --checkout
- id: in_directory
  doc: directory to checkout repository to
  type: Directory
  inputBinding:
    prefix: --directory
- id: in_extra_vars
  doc: set additional variables as key=value or YAML/JSON
  type: string
  inputBinding:
    prefix: --extra-vars
- id: in_force
  doc: run the playbook even if the repository could not be
  type: boolean
  inputBinding:
    prefix: --force
- id: in_inventory_file
  doc: location of the inventory host file
  type: File
  inputBinding:
    prefix: --inventory-file
- id: in_key_file
  doc: Pass '-i <key_file>' to the SSH arguments used by git.
  type: File
  inputBinding:
    prefix: --key-file
- id: in_module_name
  doc: "Module name used to check out repository.  Default is\ngit."
  type: string
  inputBinding:
    prefix: --module-name
- id: in_only_if_changed
  doc: "only run the playbook if the repository has been\nupdated"
  type: boolean
  inputBinding:
    prefix: --only-if-changed
- id: in_purge
  doc: purge checkout after playbook run
  type: boolean
  inputBinding:
    prefix: --purge
- id: in_sleep
  doc: "sleep for random interval (between 0 and n number of\nseconds) before starting.\
    \ this is a useful way to\ndisperse git requests"
  type: long
  inputBinding:
    prefix: --sleep
- id: in_tags
  doc: only run plays and tasks tagged with these values
  type: string
  inputBinding:
    prefix: --tags
- id: in_track_submodules
  doc: "submodules will track the latest commit on their\nmaster branch (or other\
    \ branch specified in\n.gitmodules). This is equivalent to specifying the\n--remote\
    \ flag to git submodule update"
  type: boolean
  inputBinding:
    prefix: --track-submodules
- id: in_url
  doc: URL of the playbook repository
  type: string
  inputBinding:
    prefix: --url
- id: in_vault_password_file
  doc: vault password file
  type: File
  inputBinding:
    prefix: --vault-password-file
- id: in_verbose
  doc: Pass -vvvv to ansible-playbook
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_updated
  doc: --git-force           modified files in the working git repository will be
  type: string
  inputBinding:
    position: 0
- id: in_discarded
  doc: -h, --help            show this help message and exit
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ansible-pull
