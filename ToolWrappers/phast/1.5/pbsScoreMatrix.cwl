class: CommandLineTool
id: pbsScoreMatrix.cwl
inputs:
- id: in_branch_length
  doc: "Output a matrix for a branch of the specified length, rather\nthan a matrix\
    \ for every branch of the tree.  The given length\nmust be non-negative and in\
    \ units of expected substitutions\nper site."
  type: long
  inputBinding:
    prefix: --branch-length
- id: in_no_pbs
  doc: "Output a 4 x 4 matrix, as described above.  With this option,\na code file\
    \ is not needed."
  type: File
  inputBinding:
    prefix: --no-pbs
- id: in_half_pbs
  doc: Output an N x 4 matrix, as described above.
  type: boolean
  inputBinding:
    prefix: --half-pbs
- id: in_tree_dot_mod
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_code_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_pbs
  doc: "Output a 4 x 4 matrix, as described above.  With this option,\na code file\
    \ is not needed."
  type: File
  outputBinding:
    glob: $(inputs.in_no_pbs)
cwlVersion: v1.1
baseCommand:
- pbsScoreMatrix
