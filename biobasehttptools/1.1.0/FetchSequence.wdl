version 1.0

task FetchSequence {
  input {
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    FetchSequence \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
}