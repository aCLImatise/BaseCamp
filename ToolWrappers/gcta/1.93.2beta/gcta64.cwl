class: CommandLineTool
id: gcta64.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gcta:1.93.2beta--0
cwlVersion: v1.1
baseCommand:
- gcta64
