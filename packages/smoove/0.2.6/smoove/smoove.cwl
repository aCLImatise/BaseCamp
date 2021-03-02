class: CommandLineTool
id: smoove.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smoove:0.2.6--0
cwlVersion: v1.1
baseCommand:
- smoove
