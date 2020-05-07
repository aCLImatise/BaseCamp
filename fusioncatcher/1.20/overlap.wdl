version 1.0

task Overlap.py {
  input {
    String outputOutput
    String alignmentAlignment
    Boolean mergedMerged
    String fragmentFragmentSize
    String overlapOverlap
    Boolean failFailGracefully
    String processesProcesses
  }
  command <<<
    overlap.py \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(alignmentAlignment) then ("--alignment " +  '"' + alignmentAlignment + '"') else ""} \
      ~{true="--merged" false="" mergedMerged} \
      ~{if defined(fragmentFragmentSize) then ("--fragment-size " +  '"' + fragmentFragmentSize + '"') else ""} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{true="--fail-gracefully" false="" failFailGracefully} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""}
  >>>
}