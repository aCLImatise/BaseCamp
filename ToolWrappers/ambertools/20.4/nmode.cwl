class: CommandLineTool
id: ../../../nmode.cwl
inputs:
- id: in_ref
  doc: ''
  type: string
  inputBinding:
    prefix: -ref
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
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
- id: in_var_4
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_var_6
  doc: ''
  type: boolean
  inputBinding:
    prefix: -O
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nmode
