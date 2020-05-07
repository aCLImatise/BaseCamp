class: CommandLineTool
id: smof_md5sum.cwl
inputs:
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: ignore_case
  doc: convert all to uppercase, before hashing
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: each_sequence
  doc: calculate md5sum for each sequence (TAB delimited)
  type: boolean
  inputBinding:
    prefix: --each-sequence
- id: all_sequences
  doc: calculate one md5sum for all concatenated sequences
  type: boolean
  inputBinding:
    prefix: --all-sequences
- id: all_headers
  doc: calculate one md5sum for all concatenated headers
  type: boolean
  inputBinding:
    prefix: --all-headers
- id: replace_header
  doc: replace the header of each entry with the checksum of the sequence
  type: boolean
  inputBinding:
    prefix: --replace-header
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- md5sum
