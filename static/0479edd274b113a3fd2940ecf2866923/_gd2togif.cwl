class: CommandLineTool
id: _gd2togif.cwl
inputs:
- id: in_gd_two_to_gif
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_filename_dot_gd_two
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_filename_do_tgif
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
- _gd2togif
