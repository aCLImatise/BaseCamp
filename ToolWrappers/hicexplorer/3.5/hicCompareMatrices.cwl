class: CommandLineTool
id: hicCompareMatrices.cwl
inputs:
- id: in_matrices
  doc: "matrix.h5, -m matrix.h5 matrix.h5\nName of the matrices in .h5 format to use,\
    \ separated\nby a space. (default: None)"
  type: long?
  inputBinding:
    prefix: --matrices
- id: in_out_filename
  doc: "File name to save the resulting matrix. The output is\nalso a .h5 file. (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_operation
  doc: "Operation to apply to the matrices. (default:\nlog2ratio)"
  type: string?
  inputBinding:
    prefix: --operation
- id: in_matrix_doth_five
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "File name to save the resulting matrix. The output is\nalso a .h5 file. (default:\
    \ None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- hicCompareMatrices
