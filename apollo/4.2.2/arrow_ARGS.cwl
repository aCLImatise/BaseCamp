class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/arrow_ARGS.cwl
inputs:
- id: arrow
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
- arrow
- ARGS
