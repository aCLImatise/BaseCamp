class: CommandLineTool
id: axtSwap_source.axt_target.sizes_query.sizes.cwl
inputs:
- id: des_tax_t
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- axtSwap
- source.axt
- target.sizes
- query.sizes
