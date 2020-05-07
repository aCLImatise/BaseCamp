class: CommandLineTool
id: trmap.cwl
inputs:
- id: ref_gff
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_gff
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -S
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: strict_match
  doc: ''
  type: boolean
  inputBinding:
    prefix: --strict-match
outputs: []
cwlVersion: v1.1
baseCommand:
- trmap
