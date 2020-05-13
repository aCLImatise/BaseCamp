class: CommandLineTool
id: _gdparttopng.cwl
inputs:
- id: gd_part_to_png
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename_gd
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: filename_png
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: x
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: y
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: w
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: h
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- _gdparttopng
