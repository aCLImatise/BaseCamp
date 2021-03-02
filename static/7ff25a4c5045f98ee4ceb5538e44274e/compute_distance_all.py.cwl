class: CommandLineTool
id: compute_distance_all.py.cwl
inputs:
- id: in_nprocs
  doc: ''
  type: string?
  inputBinding:
    prefix: --nprocs
- id: in_ifn_alignments
  doc: ''
  type: string[]
  inputBinding:
    prefix: --ifn_alignments
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- compute_distance_all.py
