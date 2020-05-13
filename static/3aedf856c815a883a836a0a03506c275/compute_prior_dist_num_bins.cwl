class: CommandLineTool
id: compute_prior_dist_num_bins.cwl
inputs:
- id: psp_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- compute-prior-dist
- num-bins
