class: CommandLineTool
id: simulate.py.cwl
inputs:
- id: in_dele
  doc: ''
  type: string?
  inputBinding:
    prefix: --dele
- id: in_ins
  doc: ''
  type: string?
  inputBinding:
    prefix: --ins
- id: in_copy
  doc: ''
  type: string?
  inputBinding:
    prefix: --copy
- id: in_simple
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_error
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_simulation
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- simulate.py
