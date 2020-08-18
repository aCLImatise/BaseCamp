class: CommandLineTool
id: ../../../kcgrasstest.cwl
inputs:
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
- id: psi_z
  doc: ''
  type: string
  inputBinding:
    prefix: -psiz
- id: pc_cap
  doc: ''
  type: string
  inputBinding:
    prefix: -pccap
- id: order
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- kcgrasstest
