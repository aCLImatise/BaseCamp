version 1.0

task Msaprobs {
  input {
    String outfileOutfile
    Int numNumThreads
    Boolean clustalwClustalw
    String consistencyConsistency
    String iterativeIterativeRefinement
    Boolean verboseVerbose
    File anAnNot
    Boolean alignmentAlignmentOrder
    Boolean versionVersion
  }
  command <<<
    msaprobs \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(numNumThreads) then ("-num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="-clustalw" false="" clustalwClustalw} \
      ~{if defined(consistencyConsistency) then ("--consistency " +  '"' + consistencyConsistency + '"') else ""} \
      ~{if defined(iterativeIterativeRefinement) then ("--iterative-refinement " +  '"' + iterativeIterativeRefinement + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(anAnNot) then ("-annot " +  '"' + anAnNot + '"') else ""} \
      ~{true="--alignment-order" false="" alignmentAlignmentOrder} \
      ~{true="-version" false="" versionVersion}
  >>>
}