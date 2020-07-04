class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/esl_selectn_n.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-selectn
- n
