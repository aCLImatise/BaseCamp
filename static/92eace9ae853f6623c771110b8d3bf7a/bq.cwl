class: CommandLineTool
id: bq.cwl
inputs:
- id: bq_py
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: global_flags
  doc: ''
  type: boolean
  inputBinding:
    prefix: --global_flags
- id: command_flags
  doc: ''
  type: boolean
  inputBinding:
    prefix: --command_flags
outputs: []
cwlVersion: v1.1
baseCommand:
- bq
