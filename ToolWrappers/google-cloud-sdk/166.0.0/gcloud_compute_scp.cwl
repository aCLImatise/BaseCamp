class: CommandLineTool
id: gcloud_compute_scp.cwl
inputs:
- id: in_zone
  doc: "In the above example, ~/REMOTE-DIR from example-instance is copied into the\n\
    ~/LOCAL-DIR directory.\nConversely, files from your local computer can be copied\
    \ to a virtual\nmachine:\n$ gcloud compute scp ~/LOCAL-FILE-1 ~/LOCAL-FILE-2 \\\
    \nexample-instance:~/REMOTE-DIR --zone us-central1-a\nIf a file contains a colon\
    \ (``:''), you must specify it by either using an\nabsolute path or a path that\
    \ begins with ``./''.\nUnder the covers, scp(1) or pscp (on Windows) is used to\
    \ facilitate the\ntransfer.\nWhen the destination is local, all sources must be\
    \ the same virtual machine\ninstance. When the destination is remote, all sources\
    \ must be local."
  type: long
  inputBinding:
    prefix: --zone
- id: in_compress
  doc: Enable compression.
  type: boolean
  inputBinding:
    prefix: --compress
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
- id: in_port
  doc: The port to connect to.
  type: string
  inputBinding:
    prefix: --port
- id: in_recurse
  doc: Upload directories recursively.
  type: boolean
  inputBinding:
    prefix: --recurse
- id: in_scp_flag
  doc: Extra flag to be sent to scp. This flag may be repeated.
  type: string
  inputBinding:
    prefix: --scp-flag
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- scp
