class: CommandLineTool
id: cmasker.cwl
inputs:
- id: in_fasta_input
  doc: FASTA Input
  type: boolean
  inputBinding:
    prefix: -f
- id: in_jellfish_database
  doc: Jellfish Database
  type: boolean
  inputBinding:
    prefix: -j
- id: in_create_occ_output
  doc: Create OCC output
  type: boolean
  inputBinding:
    prefix: -o
- id: in_normalize_value
  doc: Normalize Value
  type: boolean
  inputBinding:
    prefix: -n
- id: in_rt_value_masking
  doc: RT Value for masking threshold
  type: boolean
  inputBinding:
    prefix: -r
- id: in_strict_mode_mask
  doc: 'Strict mode: Mask the whole k-mer in the query sequence instead of the single
    nucleotide'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_prefix_for_outfiles
  doc: Prefix for the outfiles
  type: boolean
  inputBinding:
    prefix: -p
- id: in_suppress_fasta_output
  doc: Suppress FASTA output
  type: boolean
  inputBinding:
    prefix: -s
- id: in_c_masker
  doc: -h      Shows this help
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cmasker
