version 1.0

task FetchSequenceBin {
  input {
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    FetchSequence-bin \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
}