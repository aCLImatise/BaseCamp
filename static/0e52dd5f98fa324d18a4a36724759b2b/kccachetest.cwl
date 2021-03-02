class: CommandLineTool
id: kccachetest.cwl
inputs:
- id: in_lv
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -lv
- id: in_caps_iz
  doc: ''
  type: long?
  inputBinding:
    prefix: -capsiz
- id: in_cap_cnt
  doc: ''
  type: long?
  inputBinding:
    prefix: -capcnt
- id: in_b_num
  doc: ''
  type: long?
  inputBinding:
    prefix: -bnum
- id: in_tc
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -tc
- id: in_it
  doc: ''
  type: long?
  inputBinding:
    prefix: -it
- id: in_th
  doc: ''
  type: long?
  inputBinding:
    prefix: -th
- id: in_rnd
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -rnd
- id: in_var_8
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -tran
- id: in_etc
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -etc
- id: in_order
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_queue
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_12
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_wicked
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kccachetest
