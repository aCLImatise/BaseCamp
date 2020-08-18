class: CommandLineTool
id: ../../../cmasker.cwl
inputs:
- id: fasta_input
  doc: FASTA Input
  type: boolean
  inputBinding:
    prefix: -f
- id: jellfish_database
  doc: Jellfish Database
  type: boolean
  inputBinding:
    prefix: -j
- id: create_occ_output
  doc: Create OCC output
  type: boolean
  inputBinding:
    prefix: -o
- id: normalize_value
  doc: Normalize Value
  type: boolean
  inputBinding:
    prefix: -n
- id: rt_value_masking
  doc: RT Value for masking threshold
  type: boolean
  inputBinding:
    prefix: -r
- id: strict_mode_mask
  doc: 'Strict mode: Mask the whole k-mer in the query sequence instead of the single
    nucleotide'
  type: boolean
  inputBinding:
    prefix: -t
- id: prefix_for_outfiles
  doc: Prefix for the outfiles
  type: boolean
  inputBinding:
    prefix: -p
- id: suppress_fasta_output
  doc: Suppress FASTA output
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- cmasker
