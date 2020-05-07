class: CommandLineTool
id: scHicInfo.cwl
inputs:
- id: sch_i_c
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: matrix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: matrix
  doc: ''
  type: string
  inputBinding:
    prefix: --matrix
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicInfo
