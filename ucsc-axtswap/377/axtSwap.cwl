class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/axtSwap.cwl
inputs:
- id: source_do_tax_t
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: dest_do_tax_t
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- axtSwap
