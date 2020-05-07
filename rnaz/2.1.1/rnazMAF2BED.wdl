version 1.0

task RnazMAF2BED.pl {
  input {
    Boolean seqSeqId
    Boolean clusterCluster
    Boolean manMan
    File? fileFile
  }
  command <<<
    rnazMAF2BED.pl \
      ~{fileFile} \
      ~{true="--seq-id" false="" seqSeqId} \
      ~{true="--cluster" false="" clusterCluster} \
      ~{true="--man" false="" manMan}
  >>>
}