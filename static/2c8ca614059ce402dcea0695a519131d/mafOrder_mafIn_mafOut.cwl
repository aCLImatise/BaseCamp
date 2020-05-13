class: CommandLineTool
id: mafOrder_mafIn_mafOut.cwl
inputs:
- id: order_lst
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: maf_out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mafOrder
- mafIn
- mafOut
