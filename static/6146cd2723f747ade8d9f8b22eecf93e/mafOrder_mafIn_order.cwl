class: CommandLineTool
id: mafOrder_mafIn_order.lst.cwl
inputs:
- id: maf_out
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mafOrder
- mafIn
- order.lst
