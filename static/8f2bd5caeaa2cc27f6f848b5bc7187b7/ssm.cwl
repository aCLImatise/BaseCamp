class: CommandLineTool
id: ssm.cwl
inputs:
- id: in_input_files
  doc: "List of files that will be merged together. Files must\nhave appropriate extensions\
    \ to be recognized properly."
  type: string[]
  inputBinding:
    prefix: --input_files
- id: in_output_file
  doc: File path to which results are exported
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_output_file_type
  doc: "Type of file to which results are exported. If not\nspecified, file type will\
    \ be determined by the file\nextension given. Available choices are: CSV, TSV,\n\
    JSON, Excel, HDF5, Parquet, MsgPack, Stata, Pickle,\nSQLite, ARFF, GCT, RMarkdown,\
    \ JupyterNotebook"
  type: File?
  inputBinding:
    prefix: --output_file_type
- id: in_gzip
  doc: Gzips the output file
  type: File?
  inputBinding:
    prefix: --gzip
- id: in_on_column
  doc: Merge files on a specific column
  type: string?
  inputBinding:
    prefix: --on_column
- id: in_how
  doc: "Type of merge to perform. Options are left, right,\ninner, or outer,with outer\
    \ being default behavior.\n"
  type: string?
  inputBinding:
    prefix: --how
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: File path to which results are exported
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_gzip
  doc: Gzips the output file
  type: File?
  outputBinding:
    glob: $(inputs.in_gzip)
hints: []
cwlVersion: v1.1
baseCommand:
- ssm
