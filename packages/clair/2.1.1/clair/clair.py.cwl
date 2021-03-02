class: CommandLineTool
id: clair.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/clair:2.1.1--0
cwlVersion: v1.1
baseCommand:
- clair.py
