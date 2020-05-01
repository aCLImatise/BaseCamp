#!/usr/bin/env cwl-runner

baseCommand:
- hicNormalize
class: CommandLineTool
cwlVersion: v1.0
id: hicnormalize
inputs:
- doc: 'The matrix (or multiple matrices) to get information about. HiCExplorer supports
    the following file formats: h5 (native HiCExplorer format) and cool.'
  id: matrices
  inputBinding:
    prefix: --matrices
  type:
    items: string
    type: array
- doc: Normalize to a) 0 to 1 range, b) all matrices to the lowest read count of the
    given matrices.
  id: normalize
  inputBinding:
    prefix: --normalize
  type: string
- doc: Output file name for the Hi-C matrix.
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type:
    items: File
    type: array
- doc: show this help message and exit
  id: multiplicative_value
  inputBinding:
    prefix: --multiplicativeValue
  type: string
- doc: A threshold to set all values after normalization to 0 if smaller this threshold.
    Default value is 0 i.e. there is no effect.It is recommended to set it for the
    normalize mode "smallest" to 1.0. This parameter will influence the sparsity of
    the matrix by removing many values close to 0 in smallest normalization mode.
  id: set_to_zero_threshold
  inputBinding:
    prefix: --setToZeroThreshold
  type: string
