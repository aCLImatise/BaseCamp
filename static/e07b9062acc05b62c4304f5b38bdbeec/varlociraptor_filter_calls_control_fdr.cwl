class: CommandLineTool
id: varlociraptor_filter_calls_control_fdr.cwl
inputs:
- id: events
  doc: '...    Events to consider.'
  type: string
  inputBinding:
    prefix: --events
- id: fdr
  doc: FDR to control for.
  type: string
  inputBinding:
    prefix: --fdr
- id: maxlen
  doc: Maximum indel length to consider (exclusive).
  type: long
  inputBinding:
    prefix: --maxlen
- id: min_len
  doc: Minimum indel length to consider.
  type: long
  inputBinding:
    prefix: --minlen
- id: var
  doc: 'Variant type to consider. [possible values: INS, DEL, SNV, MNV, REF]'
  type: string
  inputBinding:
    prefix: --var
outputs: []
cwlVersion: v1.1
baseCommand:
- varlociraptor
- filter-calls
- control-fdr
