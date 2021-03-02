class: CommandLineTool
id: smof_md5sum.cwl
inputs:
- id: in_ignore_case
  doc: convert all to uppercase, before hashing
  type: boolean?
  inputBinding:
    prefix: --ignore-case
- id: in_each_sequence
  doc: calculate md5sum for each sequence (TAB delimited)
  type: boolean?
  inputBinding:
    prefix: --each-sequence
- id: in_all_sequences
  doc: calculate one md5sum for all concatenated sequences
  type: boolean?
  inputBinding:
    prefix: --all-sequences
- id: in_all_headers
  doc: calculate one md5sum for all concatenated headers
  type: boolean?
  inputBinding:
    prefix: --all-headers
- id: in_replace_header
  doc: "replace the header of each entry with the checksum of\nthe sequence\n"
  type: boolean?
  inputBinding:
    prefix: --replace-header
- id: in_input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- smof
- md5sum
