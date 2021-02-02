version 1.0

task Ss {
  input {
    File? input_file_type
    File? output_file_type
    File? transpose
    Boolean? filter_data_using
    File? columns
    File? all_columns
    File? gzip
    String? set_index
    String input_file
    String output_file
  }
  command <<<
    ss \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(input_file_type) then ("--input_file_type " +  '"' + input_file_type + '"') else ""} \
      ~{if defined(output_file_type) then ("--output_file_type " +  '"' + output_file_type + '"') else ""} \
      ~{if (transpose) then "--transpose" else ""} \
      ~{if (filter_data_using) then "-f" else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if (all_columns) then "--all_columns" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if defined(set_index) then ("--set_index " +  '"' + set_index + '"') else ""}
  >>>
  parameter_meta {
    input_file_type: "Type of file to be imported. If not specified, file\\ntype will be determined by the file extension given.\\nAvailable choices are: CSV, TSV, JSON, Excel, HDF5,\\nParquet, MsgPack, Stata, Pickle, SQLite, ARFF, GCT,\\nKallisto, GEO, Salmon"
    output_file_type: "Type of file to which results are exported. If not\\nspecified, file type will be determined by the file\\nextension given. Available choices are: CSV, TSV,\\nJSON, Excel, HDF5, Parquet, MsgPack, Stata, Pickle,\\nSQLite, ARFF, GCT, RMarkdown, JupyterNotebook"
    transpose: "Transpose index and columns in the output file"
    filter_data_using: "\\\"FILTER\\\", --filter \\\"FILTER\\\"\\nFilter data using python logical syntax. Your filter\\nmust be surrounded by quotes. For example: -f\\n\\\"ColumnName1 > 12.5 and (ColumnName2 == 'x' or\\nColumnName2 =='y')\\\""
    columns: "List of additional column names to include in the\\noutput file. Column names must be seperated by commas\\nand without spaces. For example: -c\\nColumnName1,ColumnName2,ColumnName3"
    all_columns: "Includes all columns in the output file. Overrides the\\n\\\"--columns\\\" flag"
    gzip: "Gzips the output file"
    set_index: "Sets the given column to become the index column,\\nwhere appropriate.\\n"
    input_file: "Data file to be imported, filtered, and/or transformed"
    output_file: "File path to which results are exported"
  }
  output {
    File out_stdout = stdout()
    File out_transpose = "${in_transpose}"
    File out_columns = "${in_columns}"
    File out_all_columns = "${in_all_columns}"
    File out_gzip = "${in_gzip}"
  }
}