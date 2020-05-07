class: CommandLineTool
id: fkitsch.cwl
inputs:
- id: matrix_type
  doc: 'menu       [s] Type of data matrix (Values: s (Square); u (Upper triangular);
    l (Lower triangular))'
  type: boolean
  inputBinding:
    prefix: -matrixtype
- id: mine_v
  doc: boolean    [N] Minimum evolution
  type: boolean
  inputBinding:
    prefix: -minev
outputs: []
cwlVersion: v1.1
baseCommand:
- fkitsch
