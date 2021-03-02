class: CommandLineTool
id: badread.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/badread:0.2.0--py_0
cwlVersion: v1.1
baseCommand:
- badread
