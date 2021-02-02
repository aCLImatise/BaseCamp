class: CommandLineTool
id: hash_overlap.cwl
inputs:
- id: in_output_amosformat_messages
  doc: Output AMOS-format messages instead of default
  type: boolean
  inputBinding:
    prefix: -A
- id: in_output_amos_bank
  doc: Output to AMOS bank instead of default
  type: boolean
  inputBinding:
    prefix: -B
- id: in_use_lowest_read
  doc: Use <n> as lowest read index (0 based inclusive)
  type: long
  inputBinding:
    prefix: -b
- id: in_use_based_exclusive
  doc: Use <n> as highest read index (0 based exclusive)
  type: long
  inputBinding:
    prefix: -e
- id: in_input_multifasta_file
  doc: Input is from multi-fasta file <input-name>
  type: boolean
  inputBinding:
    prefix: -F
- id: in_set_minimum_overlap
  doc: Set minimum overlap length to <n>
  type: long
  inputBinding:
    prefix: -o
- id: in_set_verbose_level
  doc: Set verbose level to <n>. Higher produces more output.
  type: string
  inputBinding:
    prefix: -v
- id: in_set_maximum_rate
  doc: Set maximum error rate to <d>.  E.g., 0.06 is 6% error
  type: double
  inputBinding:
    prefix: -x
- id: in_strandspecific_find_matches
  doc: "Be strand-specific: find matches only in the forward\norientation of the reads\
    \ instead of in their forward and\nreverse orientations. Useful for transcripts\
    \ and other\ndirectional sequence datasets."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_build_overlaps_iids
  doc: Build overlaps only for reads whose IIDs are in <file>
  type: File
  inputBinding:
    prefix: -I
- id: in_build_overlaps_eids
  doc: Build overlaps only for reads whose EIDs are in <file>
  type: File
  inputBinding:
    prefix: -E
- id: in_hash_overlap
  doc: <input-name>
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hash-overlap
