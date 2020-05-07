class: CommandLineTool
id: shapeshift.cwl
inputs:
- id: input_file
  doc: Data file to be imported, filtered, and/or transformed
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: File path to which results are exported
  type: string
  inputBinding:
    position: 1
- id: input_file_type
  doc: 'Type of file to be imported. If not specified, file type will be determined
    by the file extension given. Available choices are: CSV, TSV, JSON, Excel, HDF5,
    Parquet, MsgPack, Stata, Pickle, SQLite, ARFF, GCT, Kallisto, GEO, Salmon'
  type: File
  inputBinding:
    prefix: --input_file_type
- id: output_file_type
  doc: 'Type of file to which results are exported. If not specified, file type will
    be determined by the file extension given. Available choices are: CSV, TSV, JSON,
    Excel, HDF5, Parquet, MsgPack, Stata, Pickle, SQLite, ARFF, GCT, RMarkdown, JupyterNotebook'
  type: File
  inputBinding:
    prefix: --output_file_type
- id: transpose
  doc: Transpose index and columns in the output file
  type: boolean
  inputBinding:
    prefix: --transpose
- id: f
  doc: "\"FILTER\", --filter \"FILTER\" Filter data using python logical syntax. Your\
    \ filter must be surrounded by quotes. For example: -f \"ColumnName1 > 12.5 and\
    \ (ColumnName2 == 'x' or ColumnName2 =='y')\""
  type: boolean
  inputBinding:
    prefix: -f
- id: columns
  doc: 'List of additional column names to include in the output file. Column names
    must be seperated by commas and without spaces. For example: -c ColumnName1,ColumnName2,ColumnName3'
  type: string
  inputBinding:
    prefix: --columns
- id: all_columns
  doc: Includes all columns in the output file. Overrides the "--columns" flag
  type: boolean
  inputBinding:
    prefix: --all_columns
- id: gzip
  doc: Gzips the output file
  type: boolean
  inputBinding:
    prefix: --gzip
- id: set_index
  doc: Sets the given column to become the index column, where appropriate.
  type: string
  inputBinding:
    prefix: --set_index
outputs: []
cwlVersion: v1.1
baseCommand:
- shapeshift
