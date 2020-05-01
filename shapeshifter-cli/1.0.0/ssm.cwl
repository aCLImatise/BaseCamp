#!/usr/bin/env cwl-runner

baseCommand:
- ssm
class: CommandLineTool
cwlVersion: v1.0
id: ssm
inputs:
- doc: List of files that will be merged together. Files must have appropriate extensions
    to be recognized properly.
  id: input_files
  inputBinding:
    prefix: --input_files
  type:
    items: string
    type: array
- doc: File path to which results are exported
  id: output_file
  inputBinding:
    prefix: --output_file
  type: string
- doc: 'Type of file to which results are exported. If not specified, file type will
    be determined by the file extension given. Available choices are: CSV, TSV, JSON,
    Excel, HDF5, Parquet, MsgPack, Stata, Pickle, SQLite, ARFF, GCT, RMarkdown, JupyterNotebook'
  id: output_file_type
  inputBinding:
    prefix: --output_file_type
  type: File
- doc: Gzips the output file
  id: gzip
  inputBinding:
    prefix: --gzip
  type: boolean
- doc: Merge files on a specific column
  id: on_column
  inputBinding:
    prefix: --on_column
  type: string
- doc: Type of merge to perform. Options are left, right, inner, or outer,with outer
    being default behavior.
  id: how
  inputBinding:
    prefix: --how
  type: string
