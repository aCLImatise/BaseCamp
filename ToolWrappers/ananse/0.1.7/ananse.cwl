class: CommandLineTool
id: ananse.cwl
inputs:
- id: in_subcommand
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
  dockerPull: quay.io/biocontainers/ananse:0.1.7--py_0
cwlVersion: v1.1
baseCommand:
- ananse
