class: CommandLineTool
id: ../../../checkqc_ws.cwl
inputs:
- id: port
  doc: 'Port which checkqc-ws will listen to (default: 9999).'
  type: long
  inputBinding:
    prefix: --port
- id: config
  doc: Path to the checkQC configuration file (optional)
  type: File
  inputBinding:
    prefix: --config
- id: log_config
  doc: Path to the checkQC logging configuration file (optional)
  type: File
  inputBinding:
    prefix: --log_config
- id: debug
  doc: Enable debug mode.
  type: boolean
  inputBinding:
    prefix: --debug
- id: monitor_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- checkqc-ws
