class: CommandLineTool
id: goleft.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/goleft:0.2.4--0
cwlVersion: v1.1
baseCommand:
- goleft
