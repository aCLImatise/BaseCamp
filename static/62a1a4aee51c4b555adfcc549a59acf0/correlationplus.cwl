class: CommandLineTool
id: correlationplus.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/correlationplus:0.1.6--py_0
cwlVersion: v1.1
baseCommand:
- correlationplus
