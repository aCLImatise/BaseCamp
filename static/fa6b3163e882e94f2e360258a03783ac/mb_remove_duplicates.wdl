version 1.0

task MbRemoveDuplicates {
  input {
    Boolean verboseVerbose
    String? inputInputFastQ
    String? outputOutputFastQ
  }
  command <<<
    mb-remove-duplicates \
      ~{inputInputFastQ} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{outputOutputFastQ}
  >>>
}