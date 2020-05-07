version 1.0

task MbNaiveBsfinder {
  input {
    Int minMinTransitions
    String referenceReference
    String mutationMutation
    String? pilePileUpFile
    String? outputOutputTable
  }
  command <<<
    mb-naive-bsfinder \
      ~{pilePileUpFile} \
      ~{if defined(minMinTransitions) then ("--min_transitions " +  '"' + minMinTransitions + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(mutationMutation) then ("--mutation " +  '"' + mutationMutation + '"') else ""} \
      ~{outputOutputTable}
  >>>
}