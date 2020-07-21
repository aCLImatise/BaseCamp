class: CommandLineTool
id: ../../../_pngtogd2.cwl
inputs:
- id: png_to_gd_two
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename_dot_png
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: filename_dot_gd_two
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: cs
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: fmt
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- _pngtogd2
