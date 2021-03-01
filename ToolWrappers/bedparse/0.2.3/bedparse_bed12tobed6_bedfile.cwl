class: CommandLineTool
id: bedparse_bed12tobed6_bedfile.cwl
inputs:
- id: in_which_exon
  doc: ''
  type: string?
  inputBinding:
    prefix: --whichExon
- id: in_append_exn
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --appendExN
- id: in_bed_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_be_done_two_to_bed_six
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bedparse
- bed12tobed6
- bedfile
