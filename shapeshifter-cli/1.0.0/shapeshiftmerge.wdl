version 1.0

task Shapeshiftmerge {
  input {
    Array[String] input_files
    File? output_file
    File? output_file_type
    File? gzip
    String? on_column
    String? how
  }
  command <<<
    shapeshiftmerge \
      ~{if defined(input_files) then ("--input_files " +  '"' + input_files + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_file_type) then ("--output_file_type " +  '"' + output_file_type + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if defined(on_column) then ("--on_column " +  '"' + on_column + '"') else ""} \
      ~{if defined(how) then ("--how " +  '"' + how + '"') else ""}
  >>>
  parameter_meta {
    input_files: "List of files that will be merged together. Files must\\nhave appropriate extensions to be recognized properly."
    output_file: "File path to which results are exported"
    output_file_type: "Type of file to which results are exported. If not\\nspecified, file type will be determined by the file\\nextension given. Available choices are: CSV, TSV,\\nJSON, Excel, HDF5, Parquet, MsgPack, Stata, Pickle,\\nSQLite, ARFF, GCT, RMarkdown, JupyterNotebook"
    gzip: "Gzips the output file"
    on_column: "Merge files on a specific column"
    how: "Type of merge to perform. Options are left, right,\\ninner, or outer,with outer being default behavior.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_gzip = "${in_gzip}"
  }
}