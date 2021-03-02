class: CommandLineTool
id: README.md.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/burst:v1.0--0
cwlVersion: v1.1
baseCommand:
- README.md
