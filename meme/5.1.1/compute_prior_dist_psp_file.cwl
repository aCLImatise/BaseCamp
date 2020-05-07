class: CommandLineTool
id: compute_prior_dist_psp_file.cwl
inputs:
- id: num_bins
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: psp_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- compute-prior-dist
- psp-file
