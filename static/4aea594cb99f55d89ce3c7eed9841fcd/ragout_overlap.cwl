class: CommandLineTool
id: ragout_overlap.cwl
inputs:
- id: overlap
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_in
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: dot_out
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: min_k
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: max_k
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: detect_km_er
  doc: ''
  type: boolean
  inputBinding:
    prefix: --detect-kmer
- id: hist
  doc: ''
  type: boolean
  inputBinding:
    prefix: --hist
outputs: []
cwlVersion: v1.1
baseCommand:
- ragout-overlap
