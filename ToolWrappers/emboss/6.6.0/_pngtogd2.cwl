class: CommandLineTool
id: _pngtogd2.cwl
inputs:
- id: in_png_to_gd_two
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_filename_dot_png
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_filename_dot_gd_two
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_cs
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_fmt
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _pngtogd2
