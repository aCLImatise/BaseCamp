class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/crisprbact_ARGS.cwl
inputs:
- id: crisp_rb_act
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
- crisprbact
- ARGS
