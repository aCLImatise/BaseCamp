class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mafOrder.cwl
inputs:
- id: maf_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: order_dot_lst
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: maf_out
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mafOrder
