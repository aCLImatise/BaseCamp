version 1.0

task MmseqsClust {
  input {
    Boolean clusterClusterMode
    Boolean maxMaxIterations
    Boolean similaritySimilarityType
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs clust \
      ~{true="--cluster-mode" false="" clusterClusterMode} \
      ~{true="--max-iterations" false="" maxMaxIterations} \
      ~{true="--similarity-type" false="" similaritySimilarityType} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}