class: CommandLineTool
id: ragout_overlap.cwl
inputs:
- id: in_hist
  doc: ''
  type: boolean
  inputBinding:
    prefix: --hist
- id: in_detect_km_er
  doc: ''
  type: boolean
  inputBinding:
    prefix: --detect-kmer
- id: in_overlap
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_in
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_out
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_min_k
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_max_k
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ragout-overlap
