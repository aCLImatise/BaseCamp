class: CommandLineTool
id: partitionBank.cwl
inputs:
- id: in_b
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_partition_bank
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_an_k
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_bank_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- partitionBank
