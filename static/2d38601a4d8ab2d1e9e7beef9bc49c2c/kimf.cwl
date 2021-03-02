class: CommandLineTool
id: kimf.cwl
inputs:
- id: in_bad
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_params_dot_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0
cwlVersion: v1.1
baseCommand:
- kimf
