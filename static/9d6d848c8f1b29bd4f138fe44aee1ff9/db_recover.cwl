class: CommandLineTool
id: ../../../db_recover.cwl
inputs:
- id: cef_vv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -cefVv
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- db_recover
