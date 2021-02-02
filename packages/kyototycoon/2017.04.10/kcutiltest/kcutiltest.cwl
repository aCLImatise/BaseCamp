class: CommandLineTool
id: kcutiltest.cwl
inputs:
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
- id: in_msi_z
  doc: ''
  type: long
  inputBinding:
    prefix: -msiz
- id: in_th
  doc: ''
  type: long
  inputBinding:
    prefix: -th
- id: in_iv
  doc: ''
  type: long
  inputBinding:
    prefix: -iv
- id: in_cond
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_lh_map
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_misc
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mutex
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_para
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_t_a_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_th_map
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kcutiltest
