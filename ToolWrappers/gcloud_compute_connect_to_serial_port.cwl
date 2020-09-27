class: CommandLineTool
id: gcloud_compute_connect_to_serial_port.cwl
inputs:
- id: in_dry_run
  doc: "If provided, the ssh command is printed to standard out rather than\nbeing\
    \ executed."
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_extra_args
  doc: "=VALUE,[KEY=VALUE,...]\nOptional arguments can be passed to the serial port\
    \ connection by\npassing key-value pairs to this flag, such as max-connections=N\
    \ or\nreplay-lines=N. See\nhttps://cloud.google.com/compute/docs/instances/interacting-with-serial-console\n\
    for additional options."
  type: long
  inputBinding:
    prefix: --extra-args
- id: in_force_key_file_overwrite
  doc: "If enabled gcloud will regenerate and overwrite the files associated\nwith\
    \ a broken SSH key without asking for confirmation in both\ninteractive and non-interactive\
    \ environment.\nIf disabled gcloud will not attempt to regenerate the files associated\n\
    with a broken SSH key and fail in both interactive and non-interactive\nenvironment."
  type: boolean
  inputBinding:
    prefix: --force-key-file-overwrite
- id: in_port
  doc: "; default=\"1\"\nThe number of the requested serial port. Can be 1-4, default\
    \ is 1.\nInstances can support up to four serial ports. By default, this command\n\
    will connect to the first serial port. Setting this flag will connect\nto the\
    \ requested serial port."
  type: long
  inputBinding:
    prefix: --port
- id: in_ssh_key_file
  doc: "The path to the SSH key file. By default, this is\n~/.ssh/google_compute_engine."
  type: File
  inputBinding:
    prefix: --ssh-key-file
- id: in_zone
  doc: "The zone of the instance to connect to. If not specified, you may be\nprompted\
    \ to select a zone.\nTo avoid prompting when this flag is omitted, you can set\
    \ the\ncompute/zone property:\n$ gcloud config set compute/zone ZONE\nA list of\
    \ zones can be fetched by running:\n$ gcloud compute zones list\nTo unset the\
    \ property, run:\n$ gcloud config unset compute/zone\nAlternatively, the zone\
    \ can be stored in the environment variable\nCLOUDSDK_COMPUTE_ZONE."
  type: string
  inputBinding:
    prefix: --zone
- id: in_instance
  doc: SYNOPSIS
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
- connect-to-serial-port
