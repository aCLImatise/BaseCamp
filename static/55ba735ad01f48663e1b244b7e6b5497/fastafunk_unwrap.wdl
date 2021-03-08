version 1.0

task FastafunkUnwrap {
  input {
    Boolean? verbose
    File? log_file
    File? in_fast_a
    File? out_fast_a
  }
  command <<<
    fastafunk unwrap \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(in_fast_a) then ("--in-fasta " +  '"' + in_fast_a + '"') else ""} \
      ~{if defined(out_fast_a) then ("--out-fasta " +  '"' + out_fast_a + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0"
  }
  parameter_meta {
    verbose: "Run with high verbosity (debug level logging)"
    log_file: "Log file to use (otherwise uses stdout, or stderr if\\nout-fasta to stdout)"
    in_fast_a: "[<filename> ...]\\nOne or more FASTA files of sequences (else reads from\\nstdin)"
    out_fast_a: "A FASTA file (else writes to stdout)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}