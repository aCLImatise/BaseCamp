class: CommandLineTool
id: ../../../nw_duration.cwl
inputs:
- id: bh_il
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bhIL
- id: filename_vertical_line
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_duration
