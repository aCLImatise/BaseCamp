version 1.0

task RefseqMasher {
  input {
    Boolean? verbose
  }
  command <<<
    refseq_masher \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "Logging verbosity (-v for logging warnings; -vvv for logging\\ndebug info)"
  }
  output {
    File out_stdout = stdout()
  }
}