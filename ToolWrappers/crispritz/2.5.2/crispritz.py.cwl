class: CommandLineTool
id: crispritz.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/crispritz:2.5.2--py38h863e69b_0
cwlVersion: v1.1
baseCommand:
- crispritz.py
