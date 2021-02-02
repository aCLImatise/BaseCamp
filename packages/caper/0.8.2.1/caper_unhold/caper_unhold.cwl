class: CommandLineTool
id: caper_unhold.cwl
inputs:
- id: in_dry_run
  doc: Caper does not take any action.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_debug
  doc: Prints all logs >= DEBUG level
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_port
  doc: Port for Caper server
  type: string
  inputBinding:
    prefix: --port
- id: in_ip
  doc: IP address for Caper server
  type: string
  inputBinding:
    prefix: --ip
- id: in_no_server_heartbeat
  doc: Disable server heartbeat file.
  type: boolean
  inputBinding:
    prefix: --no-server-heartbeat
- id: in_server_heartbeat_file
  doc: "Heartbeat file for Caper clients to get IP and port of\na server"
  type: File
  inputBinding:
    prefix: --server-heartbeat-file
- id: in_server_heartbeat_timeout
  doc: "Timeout for a heartbeat file in Milliseconds. A\nheartbeat file older than\
    \ this interval will be\nignored.\n"
  type: File
  inputBinding:
    prefix: --server-heartbeat-timeout
- id: in_wf_id_or_label
  doc: "List of workflow IDs to find matching workflows to\ncommit a specified action\
    \ (list, metadata and abort).\nWildcards (* and ?) are allowed."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- caper
- unhold
