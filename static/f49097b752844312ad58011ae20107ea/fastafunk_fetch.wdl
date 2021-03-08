version 1.0

task FastafunkFetch {
  input {
    Boolean? verbose
    File? log_file
    File? in_fast_a
    File? in_metadata
    File? index_column
    String? filter_column
    String? where_column
    Boolean? restrict
    File? out_fast_a
    File? out_metadata
    String entry
  }
  command <<<
    fastafunk fetch \
      ~{entry} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(in_fast_a) then ("--in-fasta " +  '"' + in_fast_a + '"') else ""} \
      ~{if defined(in_metadata) then ("--in-metadata " +  '"' + in_metadata + '"') else ""} \
      ~{if defined(index_column) then ("--index-column " +  '"' + index_column + '"') else ""} \
      ~{if defined(filter_column) then ("--filter-column " +  '"' + filter_column + '"') else ""} \
      ~{if defined(where_column) then ("--where-column " +  '"' + where_column + '"') else ""} \
      ~{if (restrict) then "--restrict" else ""} \
      ~{if defined(out_fast_a) then ("--out-fasta " +  '"' + out_fast_a + '"') else ""} \
      ~{if defined(out_metadata) then ("--out-metadata " +  '"' + out_metadata + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0"
  }
  parameter_meta {
    verbose: "Run with high verbosity (debug level logging)"
    log_file: "Log file to use (otherwise uses stdout, or stderr if\\nout-fasta to stdout)"
    in_fast_a: "[<filename> ...]\\nOne or more FASTA files of sequences (else reads from\\nstdin)"
    in_metadata: "CSV or TSV of metadata with same naming convention as\\nfasta file"
    index_column: "Column in the metadata file to use to match to the\\nsequence"
    filter_column: "[<column> ...]\\nMetadata column name(s) to keep"
    where_column: "=<regex> [<column>=<regex> ...]\\nAdditional matches to columns e.g. if want to rename"
    restrict: "Only outputs metadata rows with a corresponding fasta"
    out_fast_a: "A FASTA file (else writes to stdout)"
    out_metadata: "A metadata file\\n"
    entry: "--low-memory          Assumes no duplicate sequences within a FASTA so can"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}