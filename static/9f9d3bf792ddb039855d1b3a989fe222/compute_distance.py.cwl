class: CommandLineTool
id: compute_distance.py.cwl
inputs:
- id: in_of_n_prefix
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --ofn_prefix
- id: in_ifn_alignment
  doc: ''
  type: string?
  inputBinding:
    prefix: --ifn_alignment
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- compute_distance.py
