class: CommandLineTool
id: _gd2togif.cwl
inputs:
- id: gd2togif
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename_gd2
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: filename_gif
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- _gd2togif
