class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/check_sort_order.cwl
inputs:
- id: genome
  doc: a genome file of chromosome sizes and order
  type: string
  inputBinding:
    prefix: --genome
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- check-sort-order
