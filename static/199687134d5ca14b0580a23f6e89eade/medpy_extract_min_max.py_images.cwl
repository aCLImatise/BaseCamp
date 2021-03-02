class: CommandLineTool
id: medpy_extract_min_max.py_images.cwl
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
- id: in_me_dpy_extract_min_max_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_csv
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_images
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
- medpy_extract_min_max.py
- images
