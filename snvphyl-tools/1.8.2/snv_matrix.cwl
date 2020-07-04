class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/snv_matrix.pl.cwl
inputs:
- id: print_more_information
  doc: ':  Print more information (to stderr)'
  type: boolean
  inputBinding:
    prefix: -v
- id: prints_matrix_passed
  doc: ':  Prints matrix to passed file'
  type: boolean
  inputBinding:
    prefix: -o
- id: snv_align_dot_phy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- snv_matrix.pl
