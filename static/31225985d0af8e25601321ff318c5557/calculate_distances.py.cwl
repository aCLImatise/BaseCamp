class: CommandLineTool
id: calculate_distances.py.cwl
inputs:
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mikado:2.2.4--py38h803c66d_0
cwlVersion: v1.1
baseCommand:
- calculate_distances.py
