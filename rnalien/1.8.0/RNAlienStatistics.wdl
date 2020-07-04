version 1.0

task RNAlienStatistics {
  input {
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    RNAlienStatistics \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
}