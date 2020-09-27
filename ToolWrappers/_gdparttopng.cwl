class: CommandLineTool
id: _gdparttopng.cwl
inputs:
- id: in_gd_part_to_png
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_filename_dot_gd
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_filename_dot_png
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_x
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_y
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_w
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_h
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _gdparttopng
