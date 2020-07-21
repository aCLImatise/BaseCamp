class: CommandLineTool
id: ../../../split_fastx.py_output_dir.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: split_fast_x_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- split_fastx.py
- output_dir
