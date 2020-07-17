version 1.0

task RNAlienBin {
  input {
    Boolean? numeric_version
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    RNAlien-bin \
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