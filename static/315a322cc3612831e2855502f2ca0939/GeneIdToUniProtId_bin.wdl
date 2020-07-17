version 1.0

task GeneIdToUniProtIdBin {
  input {
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    GeneIdToUniProtId-bin \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
}