class: CommandLineTool
id: b2w.cwl
inputs:
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fasta
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: region
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: w
  doc: ': window length (INT)'
  type: boolean
  inputBinding:
    prefix: -w
- id: i
  doc: ': increment (INT)'
  type: boolean
  inputBinding:
    prefix: -i
- id: m
  doc: ': minimum overlap (INT)'
  type: boolean
  inputBinding:
    prefix: -m
- id: x
  doc: ': max reads starting at a position (INT)'
  type: boolean
  inputBinding:
    prefix: -x
- id: c
  doc: ': coverage threshold. Omit windows with low coverage (INT)'
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: ': drop SNVs that are adjacent to insertions/deletions (alternate behaviour)'
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- b2w
