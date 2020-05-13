class: CommandLineTool
id: prosic_control_fdr.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fdr
  doc: 'FDR to control for. [default: 0.05]'
  type: string
  inputBinding:
    prefix: --fdr
- id: event
  doc: Event to consider.
  type: string
  inputBinding:
    prefix: --event
- id: max_len
  doc: Maximum indel length to consider (exclusive).
  type: long
  inputBinding:
    prefix: --max-len
- id: min_len
  doc: Minimum indel length to consider.
  type: long
  inputBinding:
    prefix: --min-len
- id: var
  doc: Variant type to consider (SNV, INS, DEL).
  type: string
  inputBinding:
    prefix: --var
outputs: []
cwlVersion: v1.1
baseCommand:
- prosic
- control-fdr
