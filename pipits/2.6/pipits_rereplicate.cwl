class: CommandLineTool
id: pipits_rereplicate.cwl
inputs:
- id: re_replicate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequences
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: uc
  doc: ''
  type: string
  inputBinding:
    prefix: --uc
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_rereplicate
