class: CommandLineTool
id: ../../../agg_ingest1.cwl
inputs:
- id: output
  doc: agg will output output_prefix.bcf and output_prefix.tmp
  type: string
  inputBinding:
    prefix: --output
- id: fast_a_ref
  doc: reference sequence
  type: File
  inputBinding:
    prefix: --fasta-ref
- id: ignore_non_matching_ref
  doc: skip non-matching ref alleles (will warn)
  type: boolean
  inputBinding:
    prefix: --ignore-non-matching-ref
- id: input_gvc_f
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- agg
- ingest1
