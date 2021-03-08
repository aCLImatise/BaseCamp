version 1.0

task FastafunkMerge {
  input {
    File? out_metadata
    Boolean? verbose
    File? log_file
    File? in_fast_a
    File? in_metadata
    File? index_column
    File? out_fast_a
    Boolean? low_memory
  }
  command <<<
    fastafunk merge \
      ~{if defined(out_metadata) then ("--out-metadata " +  '"' + out_metadata + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(in_fast_a) then ("--in-fasta " +  '"' + in_fast_a + '"') else ""} \
      ~{if defined(in_metadata) then ("--in-metadata " +  '"' + in_metadata + '"') else ""} \
      ~{if defined(index_column) then ("--index-column " +  '"' + index_column + '"') else ""} \
      ~{if defined(out_fast_a) then ("--out-fasta " +  '"' + out_fast_a + '"') else ""} \
      ~{if (low_memory) then "--low-memory" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0"
  }
  parameter_meta {
    out_metadata: "[--out-fasta <filename>]"
    verbose: "Run with high verbosity (debug level logging)"
    log_file: "Log file to use (otherwise uses stdout, or stderr if\\nout-fasta to stdout)"
    in_fast_a: "[<filename> ...]\\nOne or more FASTA files of sequences (else reads from\\nstdin)"
    in_metadata: "[<filename> ...]\\nOne or more CSV or TSV tables of metadata"
    index_column: "Column in the metadata file to use to match to the\\nsequence"
    out_fast_a: "A FASTA file (else writes to stdout)"
    low_memory: "Assumes no duplicate sequences within a FASTA so can\\nuse SeqIO index\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_metadata = "${in_out_metadata}"
    File out_log_file = "${in_log_file}"
  }
}