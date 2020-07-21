class: CommandLineTool
id: ../../../tgt_shift_boundaries.py_file.cwl
inputs:
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: tgt_shift_boundaries_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tgt-shift-boundaries.py
- file
