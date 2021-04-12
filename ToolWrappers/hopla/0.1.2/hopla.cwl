class: CommandLineTool
id: hopla.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hopla:0.1.2--0
cwlVersion: v1.1
baseCommand:
- hopla
