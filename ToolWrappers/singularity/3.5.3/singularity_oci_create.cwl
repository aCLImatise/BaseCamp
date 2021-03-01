class: CommandLineTool
id: singularity_oci_create.cwl
inputs:
- id: in_bundle
  doc: specify the OCI bundle path (required)
  type: File?
  inputBinding:
    prefix: --bundle
- id: in_empty_process
  doc: "run container without executing container\nprocess (eg: for POD container)"
  type: boolean?
  inputBinding:
    prefix: --empty-process
- id: in_log_format
  doc: "specify the log file format. Available\nformats are basic, kubernetes and\
    \ json\n(default \"kubernetes\")"
  type: File?
  inputBinding:
    prefix: --log-format
- id: in_log_path
  doc: specify the log file path
  type: File?
  inputBinding:
    prefix: --log-path
- id: in_pid_file
  doc: specify the pid file
  type: File?
  inputBinding:
    prefix: --pid-file
- id: in_sync_socket
  doc: specify the path to unix socket for state
  type: File?
  inputBinding:
    prefix: --sync-socket
- id: in_synchronization
  doc: 'Examples:'
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
- singularity
- oci
- create
