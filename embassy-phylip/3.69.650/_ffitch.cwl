#!/usr/bin/env cwl-runner

baseCommand:
- _ffitch
class: CommandLineTool
cwlVersion: v1.0
id: _ffitch
inputs:
- doc: 'menu       [s] Type of input data matrix (Values: s (Square); u (Upper triangular);
    l (Lower triangular))'
  id: matrix_type
  inputBinding:
    prefix: -matrixtype
  type: boolean
- doc: boolean    [N] Minimum evolution
  id: mine_v
  inputBinding:
    prefix: -minev
  type: boolean
- doc: integer    [0] Species number to use as outgroup (Integer 0 or more)
  id: out_gr_no
  inputBinding:
    prefix: -outgrno
  type: boolean
- doc: float      [2.0] Power (Any numeric value)
  id: power
  inputBinding:
    prefix: -power
  type: boolean
