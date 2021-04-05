class: CommandLineTool
id: kcgrasstest.cwl
inputs:
- id: in_pc_cap
  doc: ''
  type: long?
  inputBinding:
    prefix: -pccap
- id: in_psi_z
  doc: ''
  type: long?
  inputBinding:
    prefix: -psiz
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
- id: in_var_7
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
- id: in_var_11
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kyototycoon:20170410--h896b458_0
cwlVersion: v1.1
baseCommand:
- kcgrasstest
