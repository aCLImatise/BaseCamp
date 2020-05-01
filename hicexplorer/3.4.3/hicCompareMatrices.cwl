#!/usr/bin/env cwl-runner

baseCommand:
- hicCompareMatrices
class: CommandLineTool
cwlVersion: v1.0
id: hiccomparematrices
inputs:
- doc: 'matrix.h5, -m matrix.h5 matrix.h5 Name of the matrices in .h5 format to use,
    separated by a space. (default: None)'
  id: matrices
  inputBinding:
    prefix: --matrices
  type: string
- doc: 'File name to save the resulting matrix. The output is also a .h5 file. (default:
    None)'
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: 'Operation to apply to the matrices. (default: log2ratio)'
  id: operation
  inputBinding:
    prefix: --operation
  type: string
