class: CommandLineTool
id: ../../../compute_distance.py.cwl
inputs:
- id: ifn_alignment
  doc: ''
  type: string
  inputBinding:
    prefix: --ifn_alignment
- id: of_n_prefix
  doc: ''
  type: boolean
  inputBinding:
    prefix: --ofn_prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- compute_distance.py
