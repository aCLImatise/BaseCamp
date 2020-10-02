class: CommandLineTool
id: gcloud_compute_config_ssh.cwl
inputs:
- id: in_dry_run
  doc: "If provided, the proposed changes to the SSH config file are printed to\n\
    standard output and no actual changes are made."
  type: File
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
- id: in_remove
  doc: "If provided, any changes made to the SSH config file by this tool are\nreverted."
  type: boolean
  inputBinding:
    prefix: --remove
- id: in_ssh_config_file
  doc: "Specifies an alternative per-user SSH configuration file. By default,\nthis\
    \ is ~/.ssh/config."
  type: File
  inputBinding:
    prefix: --ssh-config-file
- id: in_ssh_key_file
  doc: "The path to the SSH key file. By default, this is\n~/.ssh/google_compute_engine."
  type: File
  inputBinding:
    prefix: --ssh-key-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dry_run
  doc: "If provided, the proposed changes to the SSH config file are printed to\n\
    standard output and no actual changes are made."
  type: File
  outputBinding:
    glob: $(inputs.in_dry_run)
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- config-ssh
