#!/usr/bin/env cwl-runner

baseCommand:
- _fkitsch
class: CommandLineTool
cwlVersion: v1.0
id: _fkitsch
inputs:
- doc: 'menu       [s] Type of data matrix (Values: s (Square); u (Upper triangular);
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
