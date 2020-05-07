version 1.0

task HMMCtoCMC {
  input {
    Boolean numericNumericVersion
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    HMMCtoCMC \
      ~{true="--numeric-version" false="" numericNumericVersion} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}