class: CommandLineTool
id: obrotate.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openbabel:3.1.1
cwlVersion: v1.1
baseCommand:
- obrotate
