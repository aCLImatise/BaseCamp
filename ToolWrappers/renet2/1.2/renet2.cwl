class: CommandLineTool
id: renet2.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/renet2:1.2--py_0
cwlVersion: v1.1
baseCommand:
- renet2
