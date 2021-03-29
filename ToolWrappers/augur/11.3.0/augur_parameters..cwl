class: CommandLineTool
id: augur_parameters..cwl
inputs:
- id: in_augur
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augur:11.3.0--py_0
cwlVersion: v1.1
baseCommand:
- augur
- parameters.
