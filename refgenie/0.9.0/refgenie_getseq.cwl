class: CommandLineTool
id: refgenie_getseq.cwl
inputs:
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- refgenie
- getseq
