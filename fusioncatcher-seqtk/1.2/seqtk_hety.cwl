class: CommandLineTool
id: seqtk_hety.cwl
inputs:
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: w
  doc: window size [50000]
  type: long
  inputBinding:
    prefix: -w
- id: t
  doc: '# start positions in a window [5]'
  type: long
  inputBinding:
    prefix: -t
- id: m
  doc: treat lowercases as masked
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- hety
