class: CommandLineTool
id: hicNormalize.cwl
inputs:
- id: matrices
  doc: 'The matrix (or multiple matrices) to get information about. HiCExplorer supports
    the following file formats: h5 (native HiCExplorer format) and cool.'
  type: string[]
  inputBinding:
    prefix: --matrices
- id: normalize
  doc: Normalize to a) 0 to 1 range, b) all matrices to the lowest read count of the
    given matrices.
  type: string
  inputBinding:
    prefix: --normalize
- id: out_filename
  doc: Output file name for the Hi-C matrix.
  type: File[]
  inputBinding:
    prefix: --outFileName
- id: multiplicative_value
  doc: show this help message and exit
  type: string
  inputBinding:
    prefix: --multiplicativeValue
- id: set_to_zero_threshold
  doc: A threshold to set all values after normalization to 0 if smaller this threshold.
    Default value is 0 i.e. there is no effect.It is recommended to set it for the
    normalize mode "smallest" to 1.0. This parameter will influence the sparsity of
    the matrix by removing many values close to 0 in smallest normalization mode.
  type: string
  inputBinding:
    prefix: --setToZeroThreshold
outputs: []
cwlVersion: v1.1
baseCommand:
- hicNormalize
