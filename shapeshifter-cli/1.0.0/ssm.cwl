class: CommandLineTool
id: ssm.cwl
inputs:
- id: input_files
  doc: List of files that will be merged together. Files must have appropriate extensions
    to be recognized properly.
  type: string[]
  inputBinding:
    prefix: --input_files
- id: output_file
  doc: File path to which results are exported
  type: string
  inputBinding:
    prefix: --output_file
- id: output_file_type
  doc: 'Type of file to which results are exported. If not specified, file type will
    be determined by the file extension given. Available choices are: CSV, TSV, JSON,
    Excel, HDF5, Parquet, MsgPack, Stata, Pickle, SQLite, ARFF, GCT, RMarkdown, JupyterNotebook'
  type: File
  inputBinding:
    prefix: --output_file_type
- id: gzip
  doc: Gzips the output file
  type: boolean
  inputBinding:
    prefix: --gzip
- id: on_column
  doc: Merge files on a specific column
  type: string
  inputBinding:
    prefix: --on_column
- id: how
  doc: Type of merge to perform. Options are left, right, inner, or outer,with outer
    being default behavior.
  type: string
  inputBinding:
    prefix: --how
outputs: []
cwlVersion: v1.1
baseCommand:
- ssm
