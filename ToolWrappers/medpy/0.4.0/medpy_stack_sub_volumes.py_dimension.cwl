class: CommandLineTool
id: medpy_stack_sub_volumes.py_dimension.cwl
inputs:
- id: in_r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: in_z
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z
- id: in_d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: in_me_dpy_stack_sub_volumes_do_tpy
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
- medpy_stack_sub_volumes.py
- dimension
