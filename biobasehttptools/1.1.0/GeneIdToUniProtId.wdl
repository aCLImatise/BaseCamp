version 1.0

task GeneIdToUniProtId {
  input {
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    GeneIdToUniProtId \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
}