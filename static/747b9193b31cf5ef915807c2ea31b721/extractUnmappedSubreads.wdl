version 1.0

task ExtractUnmappedSubreads.py {
  input {
    Boolean verboseVerbose
    Boolean profileProfile
    Boolean debugDebug
  }
  command <<<
    extractUnmappedSubreads.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--profile" false="" profileProfile} \
      ~{true="--debug" false="" debugDebug}
  >>>
}