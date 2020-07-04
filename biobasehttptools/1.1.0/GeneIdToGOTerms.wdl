version 1.0

task GeneIdToGOTerms {
  input {
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    GeneIdToGOTerms \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
}