version 1.0

task SelectSequencesFromMSA {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    SelectSequencesFromMSA \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}