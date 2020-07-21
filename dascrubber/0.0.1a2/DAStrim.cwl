class: CommandLineTool
id: ../../../DAStrim.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: var_3
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: var_4
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- DAStrim
