class: CommandLineTool
id: flapjack.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/flapjack:1.20.10.07--0
cwlVersion: v1.1
baseCommand:
- flapjack
