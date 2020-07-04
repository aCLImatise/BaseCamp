version 1.0

task Ssm {
  input {
    Array[String] input_files
    String? output_file
    File? output_file_type
    Boolean? gzip
    String? on_column
    String? how
  }
  command <<<
    ssm \
      ~{if defined(input_files) then ("--input_files " +  '"' + input_files + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_file_type) then ("--output_file_type " +  '"' + output_file_type + '"') else ""} \
      ~{true="--gzip" false="" gzip} \
      ~{if defined(on_column) then ("--on_column " +  '"' + on_column + '"') else ""} \
      ~{if defined(how) then ("--how " +  '"' + how + '"') else ""}
  >>>
  parameter_meta {
    input_files: "List of files that will be merged together. Files must have appropriate extensions to be recognized properly."
    output_file: "File path to which results are exported"
    output_file_type: "Type of file to which results are exported. If not specified, file type will be determined by the file extension given. Available choices are: CSV, TSV, JSON, Excel, HDF5, Parquet, MsgPack, Stata, Pickle, SQLite, ARFF, GCT, RMarkdown, JupyterNotebook"
    gzip: "Gzips the output file"
    on_column: "Merge files on a specific column"
    how: "Type of merge to perform. Options are left, right, inner, or outer,with outer being default behavior."
  }
}