version 1.0

task CMCtoHMMC {
  input {
    Boolean numericNumericVersion
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    CMCtoHMMC \
      ~{true="--numeric-version" false="" numericNumericVersion} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}