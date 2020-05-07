class: CommandLineTool
id: kccachetest.cwl
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
- id: tc
  doc: ''
  type: boolean
  inputBinding:
    prefix: -tc
- id: b_num
  doc: ''
  type: string
  inputBinding:
    prefix: -bnum
- id: cap_cnt
  doc: ''
  type: string
  inputBinding:
    prefix: -capcnt
- id: caps_iz
  doc: ''
  type: string
  inputBinding:
    prefix: -capsiz
- id: lv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -lv
outputs: []
cwlVersion: v1.1
baseCommand:
- kccachetest
