class: CommandLineTool
id: frg_umd_merge.cwl
inputs:
- id: in_determines_field_mustmatch
  doc: "Determines which field on fasta header line must\nmatch the seqname in the\
    \ src field of the frg file\n-0  no match required (default)\n-1  first field\
    \ must match\n-2  second field must match"
  type: boolean?
  inputBinding:
    prefix: '-0'
- id: in_frg_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_umd_seq_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_umd_qual_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- frg-umd-merge
