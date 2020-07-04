class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kchashtest.cwl
inputs:
- id: th
  doc: ''
  type: string
  inputBinding:
    prefix: -th
- id: rnd
  doc: ''
  type: boolean
  inputBinding:
    prefix: -rnd
- id: order
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- kchashtest
