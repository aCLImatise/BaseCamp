#!/usr/bin/env cwl-runner

baseCommand:
- hicSumMatrices
class: CommandLineTool
cwlVersion: v1.0
id: hicsummatrices
inputs:
- doc: '.h5 or cooler file format [.h5 or cooler file format ...], -m .h5 or cooler
    file format [.h5 or cooler file format ...] Space-delimited names of the matrices
    to add. The matrices must have the same shape/size. You can verify their size
    by using `hicInfo`. (default: None)'
  id: matrices
  inputBinding:
    prefix: --matrices
  type: boolean
- doc: 'File name to save the resulting matrix. The output is from the same file type
    as the input. Please add the file ending suffix (either .h5 or .cool), if it is
    not given, there will be no output. (default: None)'
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
