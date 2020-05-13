version 1.0

task Perror {
  input {
    Boolean infoInfo
    Boolean silentSilent
    Boolean verboseVerbose
  }
  command <<<
    perror \
      ~{true="--info" false="" infoInfo} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}