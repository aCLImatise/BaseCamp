#!/usr/bin/env cwl-runner

baseCommand:
- ss
class: CommandLineTool
cwlVersion: v1.0
id: ss
inputs:
- doc: Data file to be imported, filtered, and/or transformed
  id: input_file
  inputBinding:
    position: 0
  type: string
- doc: File path to which results are exported
  id: output_file
  inputBinding:
    position: 1
  type: string
- doc: 'Type of file to be imported. If not specified, file type will be determined
    by the file extension given. Available choices are: CSV, TSV, JSON, Excel, HDF5,
    Parquet, MsgPack, Stata, Pickle, SQLite, ARFF, GCT, Kallisto, GEO, Salmon'
  id: input_file_type
  inputBinding:
    prefix: --input_file_type
  type: File
- doc: 'Type of file to which results are exported. If not specified, file type will
    be determined by the file extension given. Available choices are: CSV, TSV, JSON,
    Excel, HDF5, Parquet, MsgPack, Stata, Pickle, SQLite, ARFF, GCT, RMarkdown, JupyterNotebook'
  id: output_file_type
  inputBinding:
    prefix: --output_file_type
  type: File
- doc: Transpose index and columns in the output file
  id: transpose
  inputBinding:
    prefix: --transpose
  type: boolean
- doc: "\"FILTER\", --filter \"FILTER\" Filter data using python logical syntax. Your\
    \ filter must be surrounded by quotes. For example: -f \"ColumnName1 > 12.5 and\
    \ (ColumnName2 == 'x' or ColumnName2 =='y')\""
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: 'List of additional column names to include in the output file. Column names
    must be seperated by commas and without spaces. For example: -c ColumnName1,ColumnName2,ColumnName3'
  id: columns
  inputBinding:
    prefix: --columns
  type: string
- doc: Includes all columns in the output file. Overrides the "--columns" flag
  id: all_columns
  inputBinding:
    prefix: --all_columns
  type: boolean
- doc: Gzips the output file
  id: gzip
  inputBinding:
    prefix: --gzip
  type: boolean
- doc: Sets the given column to become the index column, where appropriate.
  id: set_index
  inputBinding:
    prefix: --set_index
  type: string
