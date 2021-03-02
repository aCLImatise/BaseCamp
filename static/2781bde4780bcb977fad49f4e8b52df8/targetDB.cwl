class: CommandLineTool
id: targetDB.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/targetdb:1.3.1--pyh864c0ab_0
cwlVersion: v1.1
baseCommand:
- targetDB
