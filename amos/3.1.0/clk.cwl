class: CommandLineTool
id: ../../../clk.cwl
inputs:
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: an_k
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- clk
