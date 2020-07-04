version 1.0

task CMVJson {
  input {
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    CMVJson \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
}