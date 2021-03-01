class: CommandLineTool
id: shmlast.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/shmlast:1.6--py_0
cwlVersion: v1.1
baseCommand:
- shmlast
