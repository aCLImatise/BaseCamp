class: CommandLineTool
id: ../../../db_log_verify.cwl
inputs:
- id: nc_vv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -NcvV
- id: var_1
  doc: ''
  type: string
  inputBinding:
    prefix: -h
- id: var_2
  doc: ''
  type: string
  inputBinding:
    prefix: -H
- id: environment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: home
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: internal
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: use
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- db_log_verify
