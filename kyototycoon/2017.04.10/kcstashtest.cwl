class: CommandLineTool
id: kcstashtest.cwl
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
- id: b_num
  doc: ''
  type: string
  inputBinding:
    prefix: -bnum
- id: lv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -lv
outputs: []
cwlVersion: v1.1
baseCommand:
- kcstashtest
