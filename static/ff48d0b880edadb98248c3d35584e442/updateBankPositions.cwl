class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/updateBankPositions.cwl
inputs:
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pos_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- updateBankPositions
