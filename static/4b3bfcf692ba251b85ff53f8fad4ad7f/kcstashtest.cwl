class: CommandLineTool
id: kcstashtest.cwl
inputs:
- id: in_lv
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -lv
- id: in_b_num
  doc: ''
  type: long?
  inputBinding:
    prefix: -bnum
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
- id: in_var_5
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
- id: in_var_9
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
- kcstashtest
