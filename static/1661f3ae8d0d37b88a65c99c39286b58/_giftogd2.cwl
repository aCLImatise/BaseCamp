class: CommandLineTool
id: _giftogd2.cwl
inputs:
- id: in_gift_ogd_two
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_filename_do_tgif
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
- _giftogd2
