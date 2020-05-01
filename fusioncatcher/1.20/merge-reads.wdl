version 1.0

task MergeReads.py {
  input {
    String mergedMerged
    String forwardForward
    String reverseReverse
    String alignmentAlignment
    String fragmentFragmentSize
    String overlapOverlap
    String processesProcesses
  }
  command <<<
    merge-reads.py \
      ~{if defined(mergedMerged) then ("--merged " +  '"' + mergedMerged + '"') else ""} \
      ~{if defined(forwardForward) then ("--forward " +  '"' + forwardForward + '"') else ""} \
      ~{if defined(reverseReverse) then ("--reverse " +  '"' + reverseReverse + '"') else ""} \
      ~{if defined(alignmentAlignment) then ("--alignment " +  '"' + alignmentAlignment + '"') else ""} \
      ~{if defined(fragmentFragmentSize) then ("--fragment-size " +  '"' + fragmentFragmentSize + '"') else ""} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""}
  >>>
}