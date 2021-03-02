class: CommandLineTool
id: augur_measurements..cwl
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
  dockerPull: quay.io/biocontainers/augur:11.1.2--py_1
cwlVersion: v1.1
baseCommand:
- augur
- measurements.
