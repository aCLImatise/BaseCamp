class: CommandLineTool
id: hicCompareMatrices.cwl
inputs:
- id: matrices
  doc: 'matrix.h5, -m matrix.h5 matrix.h5 Name of the matrices in .h5 format to use,
    separated by a space. (default: None)'
  type: string
  inputBinding:
    prefix: --matrices
- id: out_filename
  doc: 'File name to save the resulting matrix. The output is also a .h5 file. (default:
    None)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: operation
  doc: 'Operation to apply to the matrices. (default: log2ratio)'
  type: string
  inputBinding:
    prefix: --operation
outputs: []
cwlVersion: v1.1
baseCommand:
- hicCompareMatrices
