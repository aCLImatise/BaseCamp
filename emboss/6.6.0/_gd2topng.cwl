class: CommandLineTool
id: ../../../_gd2topng.cwl
inputs:
- id: gd_two_to_png
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename_dot_gd_two
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: filename_dot_png
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: srcx
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: src_y
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: width
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: height
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- _gd2topng
