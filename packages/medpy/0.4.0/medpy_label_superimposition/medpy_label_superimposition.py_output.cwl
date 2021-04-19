class: CommandLineTool
id: medpy_label_superimposition.py_output.cwl
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
- id: in_me_dpy_label_superimposition_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_image_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_image_two
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- medpy_label_superimposition.py
- output
