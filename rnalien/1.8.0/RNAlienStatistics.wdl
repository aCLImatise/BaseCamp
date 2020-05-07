version 1.0

task RNAlienStatistics {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    RNAlienStatistics \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}