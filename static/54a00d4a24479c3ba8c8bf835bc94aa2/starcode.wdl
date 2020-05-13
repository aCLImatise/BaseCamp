version 1.0

task Starcode {
  input {
    Boolean distDist
    Boolean threadsThreads
    Boolean quietQuiet
    Boolean sphereSphere
    Boolean connectedConnectedComp
    Boolean inputInput
    Boolean outputOutput
    Boolean outputOutput1
    Boolean outputOutput2
    Boolean nonNonRedundant
    Boolean printPrintClusters
    Boolean seqSeqId
  }
  command <<<
    starcode \
      ~{true="--dist" false="" distDist} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--sphere" false="" sphereSphere} \
      ~{true="--connected-comp" false="" connectedConnectedComp} \
      ~{true="--input" false="" inputInput} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--output1" false="" outputOutput1} \
      ~{true="--output2" false="" outputOutput2} \
      ~{true="--non-redundant" false="" nonNonRedundant} \
      ~{true="--print-clusters" false="" printPrintClusters} \
      ~{true="--seq-id" false="" seqSeqId}
  >>>
}