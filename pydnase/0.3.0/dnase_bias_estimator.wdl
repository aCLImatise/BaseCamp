version 1.0

task DnaseBiasEstimator.py {
  input {
    String? regionsRegions
    String? readsReads
    String? genomeGenomeSequence
    String? genomeGenomeSize
    String? outputOutput
  }
  command <<<
    dnase_bias_estimator.py \
      ~{regionsRegions} \
      ~{readsReads} \
      ~{genomeGenomeSequence} \
      ~{genomeGenomeSize} \
      ~{outputOutput}
  >>>
}