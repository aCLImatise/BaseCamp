class: CommandLineTool
id: compute_prior_dist.cwl
inputs:
- id: in_num_bins
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_psp_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- compute-prior-dist
