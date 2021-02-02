class: CommandLineTool
id: ../../../digestiflow_cli.cwl
inputs:
- id: in_verbose
  doc: Increase verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Decrease verbosity
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_dry_run
  doc: Do not perform any modifying operations
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_threads
  doc: 'Number of additional threads to use for (de)compression in I/O. [default:
    0]'
  type: long
  inputBinding:
    prefix: --threads
- id: in_log_token
  doc: "Print authentation token to log file (useful for debugging, possible leaking\
    \ security\nissue)"
  type: boolean
  inputBinding:
    prefix: --log-token
- id: in_web_url
  doc: The URL with the Digestiflow Web UI server.
  type: string
  inputBinding:
    prefix: --web-url
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- digestiflow-cli
