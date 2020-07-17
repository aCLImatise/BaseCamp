class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/expand.cwl
inputs:
- id: initial
  doc: do not convert tabs after non blanks
  type: boolean
  inputBinding:
    prefix: --initial
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- expand
