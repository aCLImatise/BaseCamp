class: CommandLineTool
id: ../../../DASqv.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: h
  doc: ''
  type: boolean
  inputBinding:
    prefix: -H
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
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
- DASqv
