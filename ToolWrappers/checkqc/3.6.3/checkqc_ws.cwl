class: CommandLineTool
id: checkqc_ws.cwl
inputs:
- id: in_port
  doc: 'Port which checkqc-ws will listen to (default: 9999).'
  type: long?
  inputBinding:
    prefix: --port
- id: in_config
  doc: Path to the checkQC configuration file (optional)
  type: File?
  inputBinding:
    prefix: --config
- id: in_log_config
  doc: Path to the checkQC logging configuration file (optional)
  type: File?
  inputBinding:
    prefix: --log_config
- id: in_debug
  doc: Enable debug mode.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_monitor_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkqc:3.6.3--py_0
cwlVersion: v1.1
baseCommand:
- checkqc-ws
