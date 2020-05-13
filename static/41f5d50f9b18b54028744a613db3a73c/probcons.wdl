version 1.0

task Probcons {
  input {
    Boolean clustalwClustalw
    String consistencyConsistency
    String iterativeIterativeRefinement
    String prePreTraining
    Boolean pairsPairs
    Boolean viterbiViterbi
    Boolean verboseVerbose
    File anAnNot
    File trainTrain
    Boolean emissionsEmissions
    File paramParamFile
    Boolean alignmentAlignmentOrder
  }
  command <<<
    probcons \
      ~{true="-clustalw" false="" clustalwClustalw} \
      ~{if defined(consistencyConsistency) then ("--consistency " +  '"' + consistencyConsistency + '"') else ""} \
      ~{if defined(iterativeIterativeRefinement) then ("--iterative-refinement " +  '"' + iterativeIterativeRefinement + '"') else ""} \
      ~{if defined(prePreTraining) then ("--pre-training " +  '"' + prePreTraining + '"') else ""} \
      ~{true="-pairs" false="" pairsPairs} \
      ~{true="-viterbi" false="" viterbiViterbi} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(anAnNot) then ("-annot " +  '"' + anAnNot + '"') else ""} \
      ~{if defined(trainTrain) then ("--train " +  '"' + trainTrain + '"') else ""} \
      ~{true="--emissions" false="" emissionsEmissions} \
      ~{if defined(paramParamFile) then ("--paramfile " +  '"' + paramParamFile + '"') else ""} \
      ~{true="--alignment-order" false="" alignmentAlignmentOrder}
  >>>
}