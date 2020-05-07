class: CommandLineTool
id: seqtk_cutN.cwl
inputs:
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: n
  doc: min size of N tract [1000]
  type: long
  inputBinding:
    prefix: -n
- id: p
  doc: penalty for a non-N [10]
  type: long
  inputBinding:
    prefix: -p
- id: g
  doc: print gaps only, no sequence
  type: boolean
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- cutN
