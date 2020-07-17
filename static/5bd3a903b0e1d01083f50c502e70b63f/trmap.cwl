class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/trmap.cwl
inputs:
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
outputs: []
cwlVersion: v1.1
baseCommand:
- trmap
