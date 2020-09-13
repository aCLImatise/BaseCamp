class: CommandLineTool
id: ../../../compute_distance.py.cwl
inputs:
- id: in_ifn_alignment
  doc: ''
  type: string
  inputBinding:
    prefix: --ifn_alignment
- id: in_of_n_prefix
  doc: ''
  type: string
  inputBinding:
    prefix: --ofn_prefix
- id: in_count_gaps
  doc: ''
  type: boolean
  inputBinding:
    prefix: --count_gaps
- id: in_overwrite
  doc: ''
  type: boolean
  inputBinding:
    prefix: --overwrite
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- compute_distance.py
