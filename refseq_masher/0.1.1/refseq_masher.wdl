version 1.0

task RefseqMasher {
  input {
    Boolean? verbose
  }
  command <<<
    refseq_masher \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "Logging verbosity (-v for logging warnings; -vvv for logging debug info)"
  }
}