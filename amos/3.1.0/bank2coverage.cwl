class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bank2coverage.cwl
inputs:
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bank2coverage
