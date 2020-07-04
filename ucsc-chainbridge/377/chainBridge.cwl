class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chainBridge.cwl
inputs:
- id: in_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_dot_two_bit
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query_dot_two_bit
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- chainBridge
