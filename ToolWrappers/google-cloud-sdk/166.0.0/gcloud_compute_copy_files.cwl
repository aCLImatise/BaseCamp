class: CommandLineTool
id: gcloud_compute_copy_files.cwl
inputs:
- id: in_dry_run
  doc: "If provided, prints the command that would be run to standard out\ninstead\
    \ of executing it."
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_force_key_file_overwrite
  doc: "If enabled gcloud will regenerate and overwrite the files associated\nwith\
    \ a broken SSH key without asking for confirmation in both\ninteractive and non-interactive\
    \ environment.\nIf disabled gcloud will not attempt to regenerate the files associated\n\
    with a broken SSH key and fail in both interactive and non-interactive\nenvironment."
  type: boolean
  inputBinding:
    prefix: --force-key-file-overwrite
- id: in_plain
  doc: "Suppresses the automatic addition of ssh(1)/scp(1) flags. This flag is\nuseful\
    \ if you want to take care of authentication yourself or use\nspecific ssh/scp\
    \ features."
  type: boolean
  inputBinding:
    prefix: --plain
- id: in_ssh_key_file
  doc: "The path to the SSH key file. By default, this is\n~/.ssh/google_compute_engine."
  type: File
  inputBinding:
    prefix: --ssh-key-file
- id: in_strict_host_key_checking
  doc: "Override the default behavior of StrictHostKeyChecking. By default,\nStrictHostKeyChecking\
    \ is set to 'no' the first time you connect to an\ninstance and will be set to\
    \ 'yes' for all subsequent connections. Use\nthis flag to specify a value for\
    \ the connection.\nSTRICT_HOST_KEY_CHECKING must be one of: yes, no, ask."
  type: string
  inputBinding:
    prefix: --strict-host-key-checking
- id: in_zone
  doc: "The zone of the instance to copy files to/from.\nIf not specified, you may\
    \ be prompted to select a zone.\nTo avoid prompting when this flag is omitted,\
    \ you can set the\ncompute/zone property:\n$ gcloud config set compute/zone ZONE\n\
    A list of zones can be fetched by running:\n$ gcloud compute zones list\nTo unset\
    \ the property, run:\n$ gcloud config unset compute/zone\nAlternatively, the zone\
    \ can be stored in the environment variable\nCLOUDSDK_COMPUTE_ZONE."
  type: string
  inputBinding:
    prefix: --zone
- id: in_transfer_dot
  doc: When the destination is local, all sources must be the same virtual machine
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- copy-files
