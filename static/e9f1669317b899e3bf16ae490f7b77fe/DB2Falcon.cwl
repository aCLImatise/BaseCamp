class: CommandLineTool
id: ../../../DB2Falcon.cwl
inputs:
- id: u
  doc: ''
  type: boolean
  inputBinding:
    prefix: -U
- id: db_two_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- DB2Falcon
