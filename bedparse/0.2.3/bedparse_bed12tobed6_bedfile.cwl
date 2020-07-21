class: CommandLineTool
id: ../../../bedparse_bed12tobed6_bedfile.cwl
inputs:
- id: append_exn
  doc: ''
  type: boolean
  inputBinding:
    prefix: --appendExN
- id: which_exon
  doc: ''
  type: string
  inputBinding:
    prefix: --whichExon
- id: bed_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: be_done_two_to_bed_six
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- bed12tobed6
- bedfile
