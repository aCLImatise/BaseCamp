class: CommandLineTool
id: compute_full_matrix.py.cwl
inputs:
- id: in_frac_selected
  doc: Do not write peakgroup if selected in less than this
  type: long
  inputBinding:
    prefix: --frac_selected
- id: in_in
  doc: ''
  type: string[]
  inputBinding:
    prefix: --in
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- compute_full_matrix.py
