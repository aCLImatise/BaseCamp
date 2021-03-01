class: CommandLineTool
id: remove_tail.py_length.cwl
inputs:
- id: in_d
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_remove_tail_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_length
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- remove_tail.py
- length
