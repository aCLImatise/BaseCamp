class: CommandLineTool
id: digestiflow_cli.cwl
inputs:
- id: verbose
  doc: Increase verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Decrease verbosity
  type: boolean
  inputBinding:
    prefix: --quiet
- id: dry_run
  doc: Do not perform any modifying operations
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: threads
  doc: 'Number of additional threads to use for (de)compression in I/O. [default:
    0]'
  type: string
  inputBinding:
    prefix: --threads
- id: log_token
  doc: Print authentation token to log file (useful for debugging, possible leaking
    security issue)
  type: boolean
  inputBinding:
    prefix: --log-token
- id: web_url
  doc: The URL with the Digestiflow Web UI server.
  type: string
  inputBinding:
    prefix: --web-url
outputs: []
cwlVersion: v1.1
baseCommand:
- digestiflow-cli
