class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chromosomer.cwl
inputs:
- id: debug
  doc: show debugging messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
