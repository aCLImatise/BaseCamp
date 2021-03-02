class: CommandLineTool
id: wiggletools.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wiggletools:1.2.8--hebded25_0
cwlVersion: v1.1
baseCommand:
- wiggletools
