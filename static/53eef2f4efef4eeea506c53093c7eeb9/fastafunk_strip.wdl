version 1.0

task FastafunkStrip {
  input {
    Boolean? verbose
    File? log_file
    File? in_fast_a
    Boolean? gap
    Boolean? ambiguity
    Boolean? missing
    Boolean? keep_alignment
    Boolean? front
    Boolean? back
    File? out_fast_a
  }
  command <<<
    fastafunk strip \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(in_fast_a) then ("--in-fasta " +  '"' + in_fast_a + '"') else ""} \
      ~{if (gap) then "--gap" else ""} \
      ~{if (ambiguity) then "--ambiguity" else ""} \
      ~{if (missing) then "--missing" else ""} \
      ~{if (keep_alignment) then "--keep-alignment" else ""} \
      ~{if (front) then "--front" else ""} \
      ~{if (back) then "--back" else ""} \
      ~{if defined(out_fast_a) then ("--out-fasta " +  '"' + out_fast_a + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0"
  }
  parameter_meta {
    verbose: "Run with high verbosity (debug level logging)"
    log_file: "Log file to use (otherwise uses stdout, or stderr if\\nout-fasta to stdout)"
    in_fast_a: "[<filename> ...]\\nOne or more FASTA files of sequences (else reads from\\nstdin)"
    gap: "Remove gaps from sequences (Default:False)"
    ambiguity: "Remove ambiguous sites from sequences (\\\"N\\\")\\n(Default:False)"
    missing: "Remove missing sites from sequences (\\\"?\\\")\\n(Default:False)"
    keep_alignment: "Remove gaps shared by all sequences at the same site\\n(Default:False)"
    front: "Remove only from the front of the sequence\\n(Default:False)"
    back: "Remove only from the back of the sequence\\n(Default:False)"
    out_fast_a: "A FASTA file (else writes to stdout)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}