version 1.0

task FastafunkCount {
  input {
    Boolean? verbose
    File? log_file
    File? in_metadata
    File? group_column
  }
  command <<<
    fastafunk count \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(in_metadata) then ("--in-metadata " +  '"' + in_metadata + '"') else ""} \
      ~{if defined(group_column) then ("--group-column " +  '"' + group_column + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0"
  }
  parameter_meta {
    verbose: "Run with high verbosity (debug level logging)"
    log_file: "Log file to use (otherwise uses stdout, or stderr if\\nout-fasta to stdout)"
    in_metadata: "[<filename> ...]\\nOne or more CSV or TSV tables of metadata"
    group_column: "[<column> ...]\\nColumn(s) in the metadata file to define groupings\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}