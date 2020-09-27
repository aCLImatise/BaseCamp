class: CommandLineTool
id: pbsa.cwl
inputs:
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_var_2
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_var_4
  doc: ''
  type: boolean
  inputBinding:
    prefix: -O
- id: in_pqr
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pbsa
