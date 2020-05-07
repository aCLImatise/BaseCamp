class: CommandLineTool
id: bank_combine_in_n.cwl
inputs:
- id: out_bank
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_n
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bank-combine
- in_n
