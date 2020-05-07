version 1.0

task CMV {
  input {
    Boolean numericNumericVersion
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    CMV \
      ~{true="--numeric-version" false="" numericNumericVersion} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}