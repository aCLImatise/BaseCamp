class: CommandLineTool
id: _pngtogd.cwl
inputs:
- id: in_png_to_gd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_filename_dot_png
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_filename_dot_gd
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _pngtogd
