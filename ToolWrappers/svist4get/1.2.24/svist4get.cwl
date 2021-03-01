class: CommandLineTool
id: svist4get.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/svist4get:1.2.24--py_0
cwlVersion: v1.1
baseCommand:
- svist4get
