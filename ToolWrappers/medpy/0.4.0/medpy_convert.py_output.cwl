class: CommandLineTool
id: medpy_convert.py_output.cwl
inputs:
- id: in_f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
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
- id: in_e
  doc: ''
  type: boolean
  inputBinding:
    prefix: -e
- id: in_me_dpy_convert_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_convert.py
- output
