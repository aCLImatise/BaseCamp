class: CommandLineTool
id: fkitsch.cwl
inputs:
- id: in_matrix_type
  doc: "menu       [s] Type of data matrix (Values: s (Square);\nu (Upper triangular);\
    \ l (Lower triangular))"
  type: boolean
  inputBinding:
    prefix: -matrixtype
- id: in_mine_v
  doc: boolean    [N] Minimum evolution
  type: boolean
  inputBinding:
    prefix: -minev
- id: in_power
  doc: float      [2.0] Power (Any numeric value)
  type: boolean
  inputBinding:
    prefix: -power
- id: in_neg_allowed
  doc: boolean    [N] Negative branch lengths allowed
  type: boolean
  inputBinding:
    prefix: -negallowed
- id: in_replicates
  doc: boolean    [N] Subreplicates
  type: boolean
  inputBinding:
    prefix: -replicates
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean
  inputBinding:
    prefix: -printdata
- id: in_matrices
  doc: '[-intreefile]        tree       Phylip tree file (optional)'
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: 'Additional (Optional) qualifiers (* if not always prompted):'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fkitsch
