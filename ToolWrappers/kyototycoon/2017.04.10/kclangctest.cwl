class: CommandLineTool
id: kclangctest.cwl
inputs:
- id: in_etc
  doc: ''
  type: boolean
  inputBinding:
    prefix: -etc
- id: in_rnd
  doc: ''
  type: boolean
  inputBinding:
    prefix: -rnd
- id: in_b_num
  doc: ''
  type: long
  inputBinding:
    prefix: -bnum
- id: in_tran
  doc: ''
  type: boolean
  inputBinding:
    prefix: -tran
- id: in_index
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_map
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_order
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kclangctest
