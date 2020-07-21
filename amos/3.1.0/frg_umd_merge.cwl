class: CommandLineTool
id: ../../../frg_umd_merge.cwl
inputs:
- id: determines_field_match
  doc: Determines which field on fasta header line must match the seqname in the src
    field of the frg file -0  no match required (default) -1  first field must match
    -2  second field must match
  type: boolean
  inputBinding:
    prefix: '-2'
- id: frg_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: umd_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: umd_qual_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- frg-umd-merge
