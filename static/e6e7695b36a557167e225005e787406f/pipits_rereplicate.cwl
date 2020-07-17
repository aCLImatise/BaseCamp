class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pipits_rereplicate.cwl
inputs:
- id: i
  doc: '[REQUIRED]'
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: '[REQUIRED]'
  type: string
  inputBinding:
    prefix: -o
- id: uc
  doc: '[REQUIRED] uc file from VSEARCH'
  type: string
  inputBinding:
    prefix: --uc
- id: re_replicate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequences_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_rereplicate
