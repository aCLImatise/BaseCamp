class: CommandLineTool
id: ffitch.cwl
inputs:
- id: matrix_type
  doc: 'menu       [s] Type of input data matrix (Values: s (Square); u (Upper triangular);
    l (Lower triangular))'
  type: boolean
  inputBinding:
    prefix: -matrixtype
- id: mine_v
  doc: boolean    [N] Minimum evolution
  type: boolean
  inputBinding:
    prefix: -minev
- id: out_gr_no
  doc: integer    [0] Species number to use as outgroup (Integer 0 or more)
  type: boolean
  inputBinding:
    prefix: -outgrno
- id: power
  doc: float      [2.0] Power (Any numeric value)
  type: boolean
  inputBinding:
    prefix: -power
outputs: []
cwlVersion: v1.1
baseCommand:
- ffitch
