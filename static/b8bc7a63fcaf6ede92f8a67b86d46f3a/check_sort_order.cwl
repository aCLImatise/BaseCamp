class: CommandLineTool
id: check_sort_order.cwl
inputs:
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: genome
  doc: ''
  type: string
  inputBinding:
    prefix: --genome
outputs: []
cwlVersion: v1.1
baseCommand:
- check-sort-order
