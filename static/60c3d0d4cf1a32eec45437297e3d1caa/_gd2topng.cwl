class: CommandLineTool
id: _gd2topng.cwl
inputs:
- id: gd2topng
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename_gd2
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: filename_png
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
