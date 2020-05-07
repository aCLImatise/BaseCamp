class: CommandLineTool
id: pbsScoreMatrix.cwl
inputs:
- id: branch_length
  doc: Output a matrix for a branch of the specified length, rather than a matrix
    for every branch of the tree.  The given length must be non-negative and in units
    of expected substitutions per site.
  type: long
  inputBinding:
    prefix: --branch-length
- id: half_pbs
  doc: Output an N x 4 matrix, as described above.
  type: boolean
  inputBinding:
    prefix: --half-pbs
- id: no_pbs
  doc: Output a 4 x 4 matrix, as described above.  With this option, a code file is
    not needed.
  type: boolean
  inputBinding:
    prefix: --no-pbs
outputs: []
cwlVersion: v1.1
baseCommand:
- pbsScoreMatrix
