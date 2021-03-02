class: CommandLineTool
id: isatools.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/isatools:0.12.0--py_0
cwlVersion: v1.1
baseCommand:
- isatools
