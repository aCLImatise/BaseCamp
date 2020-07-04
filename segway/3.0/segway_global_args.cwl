class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/segway_global_args.cwl
inputs:
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
- segway
- global_args
