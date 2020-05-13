class: CommandLineTool
id: dx_log_stream.cwl
inputs:
- id: level
  doc: Logging level to use
  type: string
  inputBinding:
    prefix: --level
- id: source
  doc: Source ID to use
  type: string
  inputBinding:
    prefix: --source
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-log-stream
