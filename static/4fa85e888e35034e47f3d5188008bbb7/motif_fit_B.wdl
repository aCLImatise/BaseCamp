version 1.0

task MotifFitB {
  input {
    String nNClusters
    String thresholdThreshold
    String branchingBranchingFactor
  }
  command <<<
    motif fit B \
      ~{if defined(nNClusters) then ("--n-clusters " +  '"' + nNClusters + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(branchingBranchingFactor) then ("--branching-factor " +  '"' + branchingBranchingFactor + '"') else ""}
  >>>
}