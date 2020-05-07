class: CommandLineTool
id: kcprototest.cwl
inputs:
- id: order
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: rnum
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tree
  doc: ''
  type: boolean
  inputBinding:
    prefix: -tree
- id: th
  doc: ''
  type: string
  inputBinding:
    prefix: -th
- id: rnd
  doc: ''
  type: boolean
  inputBinding:
    prefix: -rnd
- id: etc
  doc: ''
  type: boolean
  inputBinding:
    prefix: -etc
- id: tran
  doc: ''
  type: boolean
  inputBinding:
    prefix: -tran
outputs: []
cwlVersion: v1.1
baseCommand:
- kcprototest
