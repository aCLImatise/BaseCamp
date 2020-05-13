class: CommandLineTool
id: hicSumMatrices.cwl
inputs:
- id: matrices
  doc: '.h5 or cooler file format [.h5 or cooler file format ...], -m .h5 or cooler
    file format [.h5 or cooler file format ...] Space-delimited names of the matrices
    to add. The matrices must have the same shape/size. You can verify their size
    by using `hicInfo`. (default: None)'
  type: boolean
  inputBinding:
    prefix: --matrices
- id: out_filename
  doc: 'File name to save the resulting matrix. The output is from the same file type
    as the input. Please add the file ending suffix (either .h5 or .cool), if it is
    not given, there will be no output. (default: None)'
  type: string
  inputBinding:
    prefix: --outFileName
outputs: []
cwlVersion: v1.1
baseCommand:
- hicSumMatrices
