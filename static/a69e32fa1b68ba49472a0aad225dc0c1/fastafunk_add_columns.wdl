version 1.0

task FastafunkAddColumns {
  input {
    Boolean? verbose
    File? log_file
    File? in_metadata
    File? in_data
    String? index_column
    File? join_on
    File? new_columns
    File? out_metadata
    String? where_column
  }
  command <<<
    fastafunk add_columns \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(in_metadata) then ("--in-metadata " +  '"' + in_metadata + '"') else ""} \
      ~{if defined(in_data) then ("--in-data " +  '"' + in_data + '"') else ""} \
      ~{if defined(index_column) then ("--index-column " +  '"' + index_column + '"') else ""} \
      ~{if defined(join_on) then ("--join-on " +  '"' + join_on + '"') else ""} \
      ~{if defined(new_columns) then ("--new-columns " +  '"' + new_columns + '"') else ""} \
      ~{if defined(out_metadata) then ("--out-metadata " +  '"' + out_metadata + '"') else ""} \
      ~{if defined(where_column) then ("--where-column " +  '"' + where_column + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0"
  }
  parameter_meta {
    verbose: "Run with high verbosity (debug level logging)"
    log_file: "Log file to use (otherwise uses stdout, or stderr if\\nout-fasta to stdout)"
    in_metadata: "ONE CSV table of metadata"
    in_data: "One CSV table of additional data. Must have --index-\\ncolumn in common with metadata"
    index_column: "Column in the metadata files used to match rows"
    join_on: "Column in the data file used to match rows"
    new_columns: "[<column> ...]\\nColumn(s) in the in_data file to add to the metadata,\\nif not provided, all columns added"
    out_metadata: "A metadata file to write"
    where_column: "=<regex> [<column>=<regex> ...]\\nAdditional matches to columns e.g. if want to rename\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}