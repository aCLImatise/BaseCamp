version 1.0

task ArbReadlink {
  input {
    Boolean silentSilent
    Boolean verboseVerbose
    Boolean zeroZero
  }
  command <<<
    arb_readlink \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--zero" false="" zeroZero}
  >>>
}