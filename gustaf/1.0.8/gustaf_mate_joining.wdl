version 1.0

task GustafMateJoining {
  input {
    Boolean revRevCompl
    Boolean quietQuiet
    Boolean verboseVerbose
    Boolean veryVeryVerbose
  }
  command <<<
    gustaf_mate_joining \
      ~{true="--revcompl" false="" revRevCompl} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--very-verbose" false="" veryVeryVerbose}
  >>>
}