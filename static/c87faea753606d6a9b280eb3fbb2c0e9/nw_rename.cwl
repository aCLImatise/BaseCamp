class: CommandLineTool
id: ../../../nw_rename.cwl
inputs:
- id: hl
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hl
- id: filename_vertical_line
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: map_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_rename
