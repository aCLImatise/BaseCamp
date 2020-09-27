class: CommandLineTool
id: tgt_shift_boundaries.py_file.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: in_tgt_shift_boundaries_do_tpy
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
- tgt-shift-boundaries.py
- file
