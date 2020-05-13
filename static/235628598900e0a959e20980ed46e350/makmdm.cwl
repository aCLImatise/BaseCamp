class: CommandLineTool
id: makmdm.cwl
inputs:
- id: c
  doc: ':    Suppress output of average compositions'
  type: boolean
  inputBinding:
    prefix: -c-
- id: m
  doc: ':    Suppress output of mdm matrix'
  type: boolean
  inputBinding:
    prefix: -m-
- id: l
  doc: ':     Output LU-decomposited matrix'
  type: boolean
  inputBinding:
    prefix: -l
- id: p
  doc: ':     Output power matrices'
  type: boolean
  inputBinding:
    prefix: -p
- id: f78
  doc: '|91'
  type: boolean
  inputBinding:
    prefix: -f78
- id: b
  doc: ':     Brosum series'
  type: boolean
  inputBinding:
    prefix: -b
- id: v
  doc: ':     VT series'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- makmdm
