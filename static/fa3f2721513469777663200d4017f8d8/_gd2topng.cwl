class: CommandLineTool
id: _gd2topng.cwl
inputs:
- id: in_gd_two_to_png
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_filename_dot_gd_two
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_filename_dot_png
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_srcx
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_src_y
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_width
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_height
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
- _gd2topng
