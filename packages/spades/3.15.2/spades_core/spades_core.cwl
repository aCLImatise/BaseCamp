class: CommandLineTool
id: spades_core.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/spades:3.15.2--h633aebb_0
cwlVersion: v1.1
baseCommand:
- spades-core
