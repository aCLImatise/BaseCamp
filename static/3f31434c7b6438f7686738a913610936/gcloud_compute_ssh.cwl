class: CommandLineTool
id: gcloud_compute_ssh.cwl
inputs:
- id: in_instance
  doc: :%INSTANCE%:80
  type: long?
  inputBinding:
    prefix: -L
- id: in_command
  doc: "A command to run on the virtual machine.\nRuns the command on the target instance\
    \ and then exits."
  type: string?
  inputBinding:
    prefix: --command
- id: in_container
  doc: "The name or ID of a container inside of the virtual machine instance to\n\
    connect to. This only applies to virtual machines that are using a\nGoogle Container-Optimized\
    \ virtual machine image. For more information,\nsee https://cloud.google.com/compute/docs/containers"
  type: string?
  inputBinding:
    prefix: --container
- id: in_dry_run
  doc: "If provided, prints the command that would be run to standard out\ninstead\
    \ of executing it."
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_force_key_file_overwrite
  doc: "If enabled gcloud will regenerate and overwrite the files associated\nwith\
    \ a broken SSH key without asking for confirmation in both\ninteractive and non-interactive\
    \ environment.\nIf disabled gcloud will not attempt to regenerate the files associated\n\
    with a broken SSH key and fail in both interactive and non-interactive\nenvironment."
  type: boolean?
  inputBinding:
    prefix: --force-key-file-overwrite
- id: in_plain
  doc: "Suppresses the automatic addition of ssh(1)/scp(1) flags. This flag is\nuseful\
    \ if you want to take care of authentication yourself or use\nspecific ssh/scp\
    \ features."
  type: boolean?
  inputBinding:
    prefix: --plain
- id: in_ssh_flag
  doc: "Additional flags to be passed to ssh(1). It is recommended that flags\nbe\
    \ passed using an assignment operator and quotes. This flag will\nreplace occurences\
    \ of %USER% and %INSTANCE% with their dereferenced\nvalues. Example:\n$ gcloud\
    \ compute ssh example-instance --zone us-central1-a \\\n--ssh-flag=\"-vvv\" --ssh-flag=\"\
    -L 80:%INSTANCE%:80\"\nis equivalent to passing the flags --vvv and -L 80:162.222.181.197:80\n\
    to ssh(1) if the external IP address of 'example-instance' is\n162.222.181.197."
  type: double?
  inputBinding:
    prefix: --ssh-flag
- id: in_ssh_key_file
  doc: "The path to the SSH key file. By default, this is\n~/.ssh/google_compute_engine."
  type: File?
  inputBinding:
    prefix: --ssh-key-file
- id: in_strict_host_key_checking
  doc: "Override the default behavior of StrictHostKeyChecking. By default,\nStrictHostKeyChecking\
    \ is set to 'no' the first time you connect to an\ninstance and will be set to\
    \ 'yes' for all subsequent connections. Use\nthis flag to specify a value for\
    \ the connection.\nSTRICT_HOST_KEY_CHECKING must be one of: yes, no, ask."
  type: string?
  inputBinding:
    prefix: --strict-host-key-checking
- id: in_zone
  doc: "The zone of the instance to connect to. If not specified, you may be\nprompted\
    \ to select a zone.\nTo avoid prompting when this flag is omitted, you can set\
    \ the\ncompute/zone property:\n$ gcloud config set compute/zone ZONE\nA list of\
    \ zones can be fetched by running:\n$ gcloud compute zones list\nTo unset the\
    \ property, run:\n$ gcloud config unset compute/zone\nAlternatively, the zone\
    \ can be stored in the environment variable\nCLOUDSDK_COMPUTE_ZONE."
  type: string?
  inputBinding:
    prefix: --zone
- id: in_address_dot
  doc: This command ensures that the user's public SSH key is present in the
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- ssh
