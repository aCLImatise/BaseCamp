class: CommandLineTool
id: ragtag_scaffold.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ragtag:1.1.0--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- ragtag_scaffold.py
