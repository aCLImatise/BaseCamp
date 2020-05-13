class: CommandLineTool
id: atropos.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: config
  doc: provide options in a config file
  type: string
  inputBinding:
    prefix: --config
outputs: []
cwlVersion: v1.1
baseCommand:
- atropos
