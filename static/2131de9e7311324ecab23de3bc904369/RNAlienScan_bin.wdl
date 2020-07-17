version 1.0

task RNAlienScanBin {
  input {
    Boolean? numeric_version
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    RNAlienScan-bin \
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