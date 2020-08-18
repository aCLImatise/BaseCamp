class: CommandLineTool
id: ../../../bq.cwl
inputs:
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
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bq
