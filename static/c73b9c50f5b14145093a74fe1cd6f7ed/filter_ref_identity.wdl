version 1.0

task FilterRefIdentity {
  input {
    String inputInput
    String discardDiscard
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean modifyModify
    Int minMinReads
    Int maxMaxReads
    Int minMinIdentity
    Int maxMaxIdentity
    Boolean noNoDeamination
    Boolean noNoIndels
    Boolean noNoUnknown
  }
  command <<<
    filter_ref_identity \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(discardDiscard) then ("--discard " +  '"' + discardDiscard + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--modify" false="" modifyModify} \
      ~{if defined(minMinReads) then ("--min_reads " +  '"' + minMinReads + '"') else ""} \
      ~{if defined(maxMaxReads) then ("--max_reads " +  '"' + maxMaxReads + '"') else ""} \
      ~{if defined(minMinIdentity) then ("--min_identity " +  '"' + minMinIdentity + '"') else ""} \
      ~{if defined(maxMaxIdentity) then ("--max_identity " +  '"' + maxMaxIdentity + '"') else ""} \
      ~{true="--no_deamination" false="" noNoDeamination} \
      ~{true="--no_indels" false="" noNoIndels} \
      ~{true="--no_unknown" false="" noNoUnknown}
  >>>
}