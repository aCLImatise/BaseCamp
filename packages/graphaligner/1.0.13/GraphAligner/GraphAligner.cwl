class: CommandLineTool
id: GraphAligner.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/graphaligner:1.0.13--he1c1bb9_0
cwlVersion: v1.1
baseCommand:
- GraphAligner
