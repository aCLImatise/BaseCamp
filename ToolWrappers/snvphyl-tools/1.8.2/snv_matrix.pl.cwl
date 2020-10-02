class: CommandLineTool
id: snv_matrix.pl.cwl
inputs:
- id: in_print_more_information
  doc: ':  Print more information (to stderr)'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_prints_matrix_passed
  doc: ':  Prints matrix to passed file'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_snv_align_dot_phy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- snv_matrix.pl
