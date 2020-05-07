version 1.0

task KmerCovPlot {
  input {
    Boolean tabularTabular
    Boolean displayDisplayKmErs
    Boolean forwardForwardOnly
    Boolean sumSumOnly
    Boolean noNoTags
    Boolean noNoIndices
  }
  command <<<
    kmer-cov-plot \
      ~{true="--tabular" false="" tabularTabular} \
      ~{true="--display-kmers" false="" displayDisplayKmErs} \
      ~{true="--forward-only" false="" forwardForwardOnly} \
      ~{true="--sum-only" false="" sumSumOnly} \
      ~{true="--no-tags" false="" noNoTags} \
      ~{true="--no-indices" false="" noNoIndices}
  >>>
}