class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hiddenDomains.cwl
inputs:
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- hiddenDomains
