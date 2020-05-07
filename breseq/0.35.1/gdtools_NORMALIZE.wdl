version 1.0

task GdtoolsNORMALIZE {
  input {
    Boolean verboseVerbose
    String outputOutput
    String referenceReference
    Boolean reassignReassignIds
    Boolean repeatRepeatAdjacent
    Boolean dontDontCheckApply
  }
  command <<<
    gdtools NORMALIZE \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--reassign-ids" false="" reassignReassignIds} \
      ~{true="--repeat-adjacent" false="" repeatRepeatAdjacent} \
      ~{true="--dont-check-apply" false="" dontDontCheckApply}
  >>>
}