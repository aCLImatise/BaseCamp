version 1.0

task MashtreeCluster.pl {
  input {
    Boolean thresholdThreshold
    Boolean nonzeroNonzero
    Boolean numNumCpus
  }
  command <<<
    mashtree_cluster.pl \
      ~{true="--threshold" false="" thresholdThreshold} \
      ~{true="--nonzero" false="" nonzeroNonzero} \
      ~{true="--numcpus" false="" numNumCpus}
  >>>
}