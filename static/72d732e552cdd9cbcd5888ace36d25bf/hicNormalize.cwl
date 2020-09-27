class: CommandLineTool
id: hicNormalize.cwl
inputs:
- id: in_matrices
  doc: "The matrix (or multiple matrices) to get information\nabout. HiCExplorer supports\
    \ the following file\nformats: h5 (native HiCExplorer format) and cool."
  type: string[]
  inputBinding:
    prefix: --matrices
- id: in_normalize
  doc: "Normalize to a) 0 to 1 range, b) all matrices to the\nlowest read count of\
    \ the given matrices."
  type: string
  inputBinding:
    prefix: --normalize
- id: in_out_filename
  doc: Output file name for the Hi-C matrix.
  type: File
  inputBinding:
    prefix: --outFileName
- id: in_multiplicative_value
  doc: show this help message and exit
  type: string
  inputBinding:
    prefix: --multiplicativeValue
- id: in_set_to_zero_threshold
  doc: "A threshold to set all values after normalization to 0\nif smaller this threshold.\
    \ Default value is 0 i.e.\nthere is no effect.It is recommended to set it for\
    \ the\nnormalize mode \"smallest\" to 1.0. This parameter will\ninfluence the\
    \ sparsity of the matrix by removing many\nvalues close to 0 in smallest normalization\
    \ mode."
  type: double
  inputBinding:
    prefix: --setToZeroThreshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: Output file name for the Hi-C matrix.
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename)
cwlVersion: v1.1
baseCommand:
- hicNormalize
