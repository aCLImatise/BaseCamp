class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tgStoreCompress.cwl
inputs:
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -S
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -T
- id: v
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tgStoreCompress
