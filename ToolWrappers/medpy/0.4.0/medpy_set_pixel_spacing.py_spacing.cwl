class: CommandLineTool
id: medpy_set_pixel_spacing.py_spacing.cwl
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
- id: in_me_dpy_set_pixel_spacing_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_image
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_spacing
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- medpy_set_pixel_spacing.py
- spacing
