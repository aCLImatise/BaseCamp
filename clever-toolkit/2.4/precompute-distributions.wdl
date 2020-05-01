version 1.0

task PrecomputeDistributions {
  input {
    Boolean nN
    String? distributionDistributionFile
  }
  command <<<
    precompute-distributions \
      ~{distributionDistributionFile} \
      ~{true="-N" false="" nN}
  >>>
}