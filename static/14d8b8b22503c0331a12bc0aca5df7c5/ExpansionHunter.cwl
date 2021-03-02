class: CommandLineTool
id: ExpansionHunter.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/expansionhunter:4.0.2--he785bd8_0
cwlVersion: v1.1
baseCommand:
- ExpansionHunter
