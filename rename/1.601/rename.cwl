class: CommandLineTool
id: ../../../rename.cwl
inputs:
- id: camelcase
  doc: (see manual)
  type: boolean
  inputBinding:
    prefix: --camelcase
- id: switches_vertical_line_transforms
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rename
