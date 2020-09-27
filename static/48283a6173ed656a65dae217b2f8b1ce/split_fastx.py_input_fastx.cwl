class: CommandLineTool
id: split_fastx.py_input_fastx.cwl
inputs:
- id: in_b
  doc: ''
  type: long
  inputBinding:
    prefix: -b
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_split_fast_x_do_tpy
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
- split_fastx.py
- input_fastx
