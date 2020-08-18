class: CommandLineTool
id: ../../../hash_overlap.cwl
inputs:
- id: output_amosformat_messages
  doc: Output AMOS-format messages instead of default
  type: boolean
  inputBinding:
    prefix: -A
- id: output_amos_bank
  doc: Output to AMOS bank instead of default
  type: boolean
  inputBinding:
    prefix: -B
- id: use_n_inclusive
  doc: Use <n> as lowest read index (0 based inclusive)
  type: string
  inputBinding:
    prefix: -b
- id: use_n_exclusive
  doc: Use <n> as highest read index (0 based exclusive)
  type: string
  inputBinding:
    prefix: -e
- id: input_multifasta_file
  doc: Input is from multi-fasta file <input-name>
  type: boolean
  inputBinding:
    prefix: -F
- id: set_minimum_length
  doc: Set minimum overlap length to <n>
  type: string
  inputBinding:
    prefix: -o
- id: set_verbose_level
  doc: Set verbose level to <n>. Higher produces more output.
  type: string
  inputBinding:
    prefix: -v
- id: set_maximum_rate
  doc: Set maximum error rate to <d>.  E.g., 0.06 is 6% error
  type: string
  inputBinding:
    prefix: -x
- id: strandspecific_find_matches
  doc: 'Be strand-specific: find matches only in the forward  orientation of the reads
    instead of in their forward and reverse orientations. Useful for transcripts and
    other directional sequence datasets.'
  type: boolean
  inputBinding:
    prefix: -s
- id: build_overlaps_iids
  doc: Build overlaps only for reads whose IIDs are in <file>
  type: File
  inputBinding:
    prefix: -I
- id: build_overlaps_eids
  doc: Build overlaps only for reads whose EIDs are in <file>
  type: File
  inputBinding:
    prefix: -E
- id: hash_overlap
  doc: <input-name>
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hash-overlap
