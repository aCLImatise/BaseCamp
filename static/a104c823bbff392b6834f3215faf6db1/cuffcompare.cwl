class: CommandLineTool
id: ../../../cuffcompare.cwl
inputs:
- id: var_0
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: var_1
  doc: ''
  type: boolean
  inputBinding:
    prefix: -R
- id: t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -T
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- cuffcompare
