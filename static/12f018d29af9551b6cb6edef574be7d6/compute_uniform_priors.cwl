class: CommandLineTool
id: compute_uniform_priors.cwl
inputs:
- id: compute_uniform_prior
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: prior_value
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: psp_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- compute-uniform-priors
