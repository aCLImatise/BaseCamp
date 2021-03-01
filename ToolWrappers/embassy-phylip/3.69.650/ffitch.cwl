class: CommandLineTool
id: ffitch.cwl
inputs:
- id: in_matrix_type
  doc: "menu       [s] Type of input data matrix (Values: s\n(Square); u (Upper triangular);\
    \ l (Lower\ntriangular))"
  type: boolean?
  inputBinding:
    prefix: -matrixtype
- id: in_mine_v
  doc: boolean    [N] Minimum evolution
  type: boolean?
  inputBinding:
    prefix: -minev
- id: in_out_gr_no
  doc: "integer    [0] Species number to use as outgroup\n(Integer 0 or more)"
  type: boolean?
  inputBinding:
    prefix: -outgrno
- id: in_power
  doc: float      [2.0] Power (Any numeric value)
  type: boolean?
  inputBinding:
    prefix: -power
- id: in_replicates
  doc: boolean    [N] Subreplicates
  type: boolean?
  inputBinding:
    prefix: -replicates
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean?
  inputBinding:
    prefix: -printdata
- id: in_matrices
  doc: '[-intreefile]        tree       Phylip tree file (optional)'
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
- ffitch
