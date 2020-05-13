version 1.0

task RNAlienStatisticsBin {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    RNAlienStatistics-bin \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}