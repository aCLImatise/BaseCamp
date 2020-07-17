class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/segway_args.cwl
inputs:
- id: segway
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: global_args
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- segway
- args
