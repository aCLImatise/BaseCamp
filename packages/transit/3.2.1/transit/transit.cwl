class: CommandLineTool
id: transit.cwl
inputs:
- id: in_python
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
  dockerPull: quay.io/biocontainers/transit:3.2.1--py_0
cwlVersion: v1.1
baseCommand:
- transit
