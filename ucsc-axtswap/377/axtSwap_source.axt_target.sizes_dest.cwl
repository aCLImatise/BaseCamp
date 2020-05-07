class: CommandLineTool
id: axtSwap_source.axt_target.sizes_dest.axt.cwl
inputs:
- id: query_sizes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: des_tax_t
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- axtSwap
- source.axt
- target.sizes
- dest.axt
