class: CommandLineTool
id: shapeshift.cwl
inputs:
- id: in_input_file_type
  doc: "Type of file to be imported. If not specified, file\ntype will be determined\
    \ by the file extension given.\nAvailable choices are: CSV, TSV, JSON, Excel,\
    \ HDF5,\nParquet, MsgPack, Stata, Pickle, SQLite, ARFF, GCT,\nKallisto, GEO, Salmon"
  type: File
  inputBinding:
    prefix: --input_file_type
- id: in_output_file_type
  doc: "Type of file to which results are exported. If not\nspecified, file type will\
    \ be determined by the file\nextension given. Available choices are: CSV, TSV,\n\
    JSON, Excel, HDF5, Parquet, MsgPack, Stata, Pickle,\nSQLite, ARFF, GCT, RMarkdown,\
    \ JupyterNotebook"
  type: File
  inputBinding:
    prefix: --output_file_type
- id: in_transpose
  doc: Transpose index and columns in the output file
  type: File
  inputBinding:
    prefix: --transpose
- id: in_filter_data_using
  doc: "\"FILTER\", --filter \"FILTER\"\nFilter data using python logical syntax.\
    \ Your filter\nmust be surrounded by quotes. For example: -f\n\"ColumnName1 >\
    \ 12.5 and (ColumnName2 == 'x' or\nColumnName2 =='y')\""
  type: boolean
  inputBinding:
    prefix: -f
- id: in_columns
  doc: "List of additional column names to include in the\noutput file. Column names\
    \ must be seperated by commas\nand without spaces. For example: -c\nColumnName1,ColumnName2,ColumnName3"
  type: File
  inputBinding:
    prefix: --columns
- id: in_all_columns
  doc: "Includes all columns in the output file. Overrides the\n\"--columns\" flag"
  type: File
  inputBinding:
    prefix: --all_columns
- id: in_gzip
  doc: Gzips the output file
  type: File
  inputBinding:
    prefix: --gzip
- id: in_set_index
  doc: "Sets the given column to become the index column,\nwhere appropriate.\n"
  type: string
  inputBinding:
    prefix: --set_index
- id: in_input_file
  doc: Data file to be imported, filtered, and/or transformed
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: File path to which results are exported
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_transpose
  doc: Transpose index and columns in the output file
  type: File
  outputBinding:
    glob: $(inputs.in_transpose)
- id: out_columns
  doc: "List of additional column names to include in the\noutput file. Column names\
    \ must be seperated by commas\nand without spaces. For example: -c\nColumnName1,ColumnName2,ColumnName3"
  type: File
  outputBinding:
    glob: $(inputs.in_columns)
- id: out_all_columns
  doc: "Includes all columns in the output file. Overrides the\n\"--columns\" flag"
  type: File
  outputBinding:
    glob: $(inputs.in_all_columns)
- id: out_gzip
  doc: Gzips the output file
  type: File
  outputBinding:
    glob: $(inputs.in_gzip)
cwlVersion: v1.1
baseCommand:
- shapeshift
