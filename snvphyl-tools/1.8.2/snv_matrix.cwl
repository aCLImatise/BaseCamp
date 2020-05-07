class: CommandLineTool
id: snv_matrix.pl.cwl
inputs:
- id: snv_align_phy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: v
  doc: ':  Print more information (to stderr)'
  type: boolean
  inputBinding:
    prefix: -v
- id: o
  doc: ':  Prints matrix to passed file'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- snv_matrix.pl
