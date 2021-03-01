class: CommandLineTool
id: read_fastx.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metaphlan:3.0.7--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- read_fastx.py
