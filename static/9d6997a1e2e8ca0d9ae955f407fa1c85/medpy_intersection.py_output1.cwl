class: CommandLineTool
id: medpy_intersection.py_output1.cwl
inputs:
- id: in_f
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -f
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
- id: in_me_dpy_intersection_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_input_two
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_output_one
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_output_two
  doc: ''
  type: long
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- medpy_intersection.py
- output1
