class: CommandLineTool
id: ../../../candf.cwl
inputs:
- id: c
  doc: ''
  type: long
  inputBinding:
    prefix: -c
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: var_2
  doc: ''
  type: long
  inputBinding:
    prefix: -m
- id: var_3
  doc: ''
  type: long
  inputBinding:
    prefix: -M
- id: var_4
  doc: ''
  type: long
  inputBinding:
    prefix: -s
- id: var_5
  doc: ''
  type: long
  inputBinding:
    prefix: -S
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- candf
