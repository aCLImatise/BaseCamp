class: CommandLineTool
id: hicSumMatrices.cwl
inputs:
- id: in_matrices
  doc: ".h5 or cooler file format [.h5 or cooler file format ...], -m .h5 or cooler\
    \ file format [.h5 or cooler file format ...]\nSpace-delimited names of the matrices\
    \ to add. The\nmatrices must have the same shape/size. You can verify\ntheir size\
    \ by using `hicInfo`. (default: None)"
  type: boolean
  inputBinding:
    prefix: --matrices
- id: in_out_filename
  doc: "File name to save the resulting matrix. The output is\nfrom the same file\
    \ type as the input. Please add the\nfile ending suffix (either .h5 or .cool),\
    \ if it is not\ngiven, there will be no output. (default: None)"
  type: File
  inputBinding:
    prefix: --outFileName
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "File name to save the resulting matrix. The output is\nfrom the same file\
    \ type as the input. Please add the\nfile ending suffix (either .h5 or .cool),\
    \ if it is not\ngiven, there will be no output. (default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename)
cwlVersion: v1.1
baseCommand:
- hicSumMatrices
