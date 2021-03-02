class: CommandLineTool
id: compute_uniform_priors.cwl
inputs:
- id: in_compute_uniform_prior
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_prior_value
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_psp_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- compute-uniform-priors
