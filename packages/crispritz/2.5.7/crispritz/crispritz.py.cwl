class: CommandLineTool
id: crispritz.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/crispritz:2.5.7--py38h6148b52_1
cwlVersion: v1.1
baseCommand:
- crispritz.py
