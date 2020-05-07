version 1.0

task SgaAssemble {
  input {
    Boolean verboseVerbose
    String outOutPrefix
    String minMinOverlap
    Boolean transitiveTransitiveReduction
    String maxMaxEdges
    String bubbleBubble
    String maxMaxDivergence
    String maxMaxGapDivergence
    String maxMaxInDel
    String cutCutTerminal
    String minMinBranchLength
    String resolveResolveSmall
  }
  command <<<
    sga assemble \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outOutPrefix) then ("--out-prefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{true="--transitive-reduction" false="" transitiveTransitiveReduction} \
      ~{if defined(maxMaxEdges) then ("--max-edges " +  '"' + maxMaxEdges + '"') else ""} \
      ~{if defined(bubbleBubble) then ("--bubble " +  '"' + bubbleBubble + '"') else ""} \
      ~{if defined(maxMaxDivergence) then ("--max-divergence " +  '"' + maxMaxDivergence + '"') else ""} \
      ~{if defined(maxMaxGapDivergence) then ("--max-gap-divergence " +  '"' + maxMaxGapDivergence + '"') else ""} \
      ~{if defined(maxMaxInDel) then ("--max-indel " +  '"' + maxMaxInDel + '"') else ""} \
      ~{if defined(cutCutTerminal) then ("--cut-terminal " +  '"' + cutCutTerminal + '"') else ""} \
      ~{if defined(minMinBranchLength) then ("--min-branch-length " +  '"' + minMinBranchLength + '"') else ""} \
      ~{if defined(resolveResolveSmall) then ("--resolve-small " +  '"' + resolveResolveSmall + '"') else ""}
  >>>
}