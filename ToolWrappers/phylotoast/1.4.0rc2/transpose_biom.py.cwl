class: CommandLineTool
id: transpose_biom.py.cwl
inputs:
- id: in_o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- transpose_biom.py
