class: CommandLineTool
id: srprism.cwl
inputs:
- id: cmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: trace_level
  doc: ''
  type: long
  inputBinding:
    prefix: --trace-level
- id: log_file
  doc: ''
  type: File
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- srprism
