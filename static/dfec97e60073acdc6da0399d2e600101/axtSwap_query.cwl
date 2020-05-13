class: CommandLineTool
id: axtSwap_query.sizes.cwl
inputs:
- id: source_axt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query_sizes
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: des_tax_t
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- axtSwap
- query.sizes
