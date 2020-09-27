class: CommandLineTool
id: ribo_structure.cwl
inputs:
- id: in_k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ribo
- structure
