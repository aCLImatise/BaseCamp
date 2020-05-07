version 1.0

task RNAlien {
  input {
    Boolean numericNumericVersion
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    RNAlien \
      ~{true="--numeric-version" false="" numericNumericVersion} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}