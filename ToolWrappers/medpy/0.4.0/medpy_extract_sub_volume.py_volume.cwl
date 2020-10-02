class: CommandLineTool
id: medpy_extract_sub_volume.py_volume.cwl
inputs:
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
- id: in_me_dpy_extract_sub_volume_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_image
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_volume
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_extract_sub_volume.py
- volume
