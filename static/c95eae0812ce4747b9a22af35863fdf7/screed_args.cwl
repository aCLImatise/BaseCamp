class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/screed_args.cwl
inputs:
- id: screed
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
outputs: []
cwlVersion: v1.1
baseCommand:
- screed
- args
