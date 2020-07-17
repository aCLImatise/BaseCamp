class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/partitionBank.cwl
inputs:
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: partition_bank
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: an_k
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- partitionBank
