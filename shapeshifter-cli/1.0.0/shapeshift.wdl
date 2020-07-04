version 1.0

task Shapeshift {
  input {
    File? input_file_type
    File? output_file_type
    Boolean? transpose
    Boolean? f
    String? columns
    Boolean? all_columns
    Boolean? gzip
    String? set_index
    String input_file
    String output_file
  }
  command <<<
    shapeshift \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(input_file_type) then ("--input_file_type " +  '"' + input_file_type + '"') else ""} \
      ~{if defined(output_file_type) then ("--output_file_type " +  '"' + output_file_type + '"') else ""} \
      ~{true="--transpose" false="" transpose} \
      ~{true="-f" false="" f} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{true="--all_columns" false="" all_columns} \
      ~{true="--gzip" false="" gzip} \
      ~{if defined(set_index) then ("--set_index " +  '"' + set_index + '"') else ""}
  >>>
  parameter_meta {
    input_file_type: "Type of file to be imported. If not specified, file type will be determined by the file extension given. Available choices are: CSV, TSV, JSON, Excel, HDF5, Parquet, MsgPack, Stata, Pickle, SQLite, ARFF, GCT, Kallisto, GEO, Salmon"
    output_file_type: "Type of file to which results are exported. If not specified, file type will be determined by the file extension given. Available choices are: CSV, TSV, JSON, Excel, HDF5, Parquet, MsgPack, Stata, Pickle, SQLite, ARFF, GCT, RMarkdown, JupyterNotebook"
    transpose: "Transpose index and columns in the output file"
    f: "\"FILTER\", --filter \"FILTER\" Filter data using python logical syntax. Your filter must be surrounded by quotes. For example: -f \"ColumnName1 > 12.5 and (ColumnName2 == 'x' or ColumnName2 =='y')\""
    columns: "List of additional column names to include in the output file. Column names must be seperated by commas and without spaces. For example: -c ColumnName1,ColumnName2,ColumnName3"
    all_columns: "Includes all columns in the output file. Overrides the \"--columns\" flag"
    gzip: "Gzips the output file"
    set_index: "Sets the given column to become the index column, where appropriate."
    input_file: "Data file to be imported, filtered, and/or transformed"
    output_file: "File path to which results are exported"
  }
}