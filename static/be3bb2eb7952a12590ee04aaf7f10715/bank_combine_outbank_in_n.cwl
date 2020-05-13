class: CommandLineTool
id: bank_combine_outbank_in_n.cwl
inputs:
- id: in_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_n
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bank-combine
- outbank
- in_n
