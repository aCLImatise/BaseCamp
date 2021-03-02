class: CommandLineTool
id: popdel.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/popdel:1.3.0--h8e334b0_0
cwlVersion: v1.1
baseCommand:
- popdel
