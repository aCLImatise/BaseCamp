class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqmerge_INPUT.cwl
inputs:
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqmerge
- INPUT
