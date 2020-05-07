version 1.0

task RNAlienBin {
  input {
    Boolean numericNumericVersion
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    RNAlien-bin \
      ~{true="--numeric-version" false="" numericNumericVersion} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}