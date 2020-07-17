version 1.0

task HMMV {
  input {
    Boolean? numeric_version
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    HMMV \
      ~{true="--numeric-version" false="" numeric_version} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    numeric_version: "Print just the version number"
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
}