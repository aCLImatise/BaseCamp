class: CommandLineTool
id: ../../../_pngtogd.cwl
inputs:
- id: png_to_gd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename_dot_png
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: filename_dot_gd
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- _pngtogd
