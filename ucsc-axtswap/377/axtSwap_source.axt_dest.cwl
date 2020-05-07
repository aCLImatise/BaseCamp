class: CommandLineTool
id: axtSwap_source.axt_dest.axt.cwl
inputs:
- id: target_sizes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: des_tax_t
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- axtSwap
- source.axt
- dest.axt
