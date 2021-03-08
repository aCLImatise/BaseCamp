version 1.0

task FastafunkConsensus {
  input {
    String? index_field
    Boolean? verbose
    File? log_file
    File? in_fast_a
    File? in_metadata
    File? index_column
    Array[String] lineage
    File? out_fast_a
  }
  command <<<
    fastafunk consensus \
      ~{if defined(index_field) then ("--index-field " +  '"' + index_field + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(in_fast_a) then ("--in-fasta " +  '"' + in_fast_a + '"') else ""} \
      ~{if defined(in_metadata) then ("--in-metadata " +  '"' + in_metadata + '"') else ""} \
      ~{if defined(index_column) then ("--index-column " +  '"' + index_column + '"') else ""} \
      ~{if defined(lineage) then ("--lineage " +  '"' + lineage + '"') else ""} \
      ~{if defined(out_fast_a) then ("--out-fasta " +  '"' + out_fast_a + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0"
  }
  parameter_meta {
    index_field: "[--index-column <column>]"
    verbose: "Run with high verbosity (debug level logging)"
    log_file: "Log file to use (otherwise uses stdout, or stderr if\\nout-fasta to stdout)"
    in_fast_a: "One FASTA files of sequences (else reads from stdin)"
    in_metadata: "CSV of metadata with same naming convention as fasta\\nfile"
    index_column: "Column(s) in the metadata file to use to match to the\\nsequence"
    lineage: "Specific list of lineages to split by with others\\ncollpasing to nearest lineage."
    out_fast_a: "A FASTA file (else writes to stdout)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}