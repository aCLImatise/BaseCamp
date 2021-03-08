version 1.0

task FastafunkAnnotate {
  input {
    Boolean? verbose
    File? log_file
    File? in_fast_a
    File? in_metadata
    String? index_field
    File? index_column
    File? out_fast_a
    File? out_metadata
    String? header_delimiter
    Boolean? add_cov_id
    Boolean? low_memory
  }
  command <<<
    fastafunk annotate \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(in_fast_a) then ("--in-fasta " +  '"' + in_fast_a + '"') else ""} \
      ~{if defined(in_metadata) then ("--in-metadata " +  '"' + in_metadata + '"') else ""} \
      ~{if defined(index_field) then ("--index-field " +  '"' + index_field + '"') else ""} \
      ~{if defined(index_column) then ("--index-column " +  '"' + index_column + '"') else ""} \
      ~{if defined(out_fast_a) then ("--out-fasta " +  '"' + out_fast_a + '"') else ""} \
      ~{if defined(out_metadata) then ("--out-metadata " +  '"' + out_metadata + '"') else ""} \
      ~{if defined(header_delimiter) then ("--header-delimiter " +  '"' + header_delimiter + '"') else ""} \
      ~{if (add_cov_id) then "--add-cov-id" else ""} \
      ~{if (low_memory) then "--low-memory" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0"
  }
  parameter_meta {
    verbose: "Run with high verbosity (debug level logging)"
    log_file: "Log file to use (otherwise uses stdout, or stderr if\\nout-fasta to stdout)"
    in_fast_a: "[<filename> ...]\\nOne or more FASTA files of sequences (else reads from\\nstdin)"
    in_metadata: "[<filename> ...]\\nOne or more CSV or TSV tables of metadata"
    index_field: "[<field> ...]\\nField(s) in the fasta header to match the metadata\\n(else matches column names)"
    index_column: "Column in the metadata file to use to match to the\\nsequence"
    out_fast_a: "A FASTA file (else writes to stdout)"
    out_metadata: "A metadata file"
    header_delimiter: "Header delimiter"
    add_cov_id: "Parses header for COG or GISAID unique id and stores"
    low_memory: "Assumes no duplicate sequences within a FASTA so can\\nuse SeqIO index\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}