class: CommandLineTool
id: ../../../neurodocker.cwl
inputs:
- id: in_verbosity
  doc: ''
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: in_generate
  doc: generate recipes
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- neurodocker
