#!/usr/bin/env cwl-runner

baseCommand:
- o-subsample-matrix-file
class: CommandLineTool
cwlVersion: v1.0
id: o-subsample-matrix-file
inputs:
- doc: TAB delimited matrix to be processed
  id: file
  inputBinding:
    position: 0
  type: File
- doc: Columns to be removed from the matrix (one column id in each line)
  id: cols_to_remove
  inputBinding:
    prefix: --cols-to-remove
  type: File
- doc: Rows to be removed from the matrix (one row id in each line)
  id: rows_to_remove
  inputBinding:
    prefix: --rows-to-remove
  type: File
- doc: Columns to be kept in the subsampled matrix (one column id in each line)
  id: cols_to_keep
  inputBinding:
    prefix: --cols-to-keep
  type: File
- doc: Rows to be kept in the subsampled matrix (one row id in each line)
  id: rows_to_keep
  inputBinding:
    prefix: --rows-to-keep
  type: File
- doc: Output file name
  id: output_file
  inputBinding:
    prefix: --output-file
  type: string
