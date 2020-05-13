version 1.0

task RandomGeneSampleInput xmfaBackbone seq fileSample genomeNumber of genes {
  input {
    String? outputOutputBasename
    String? randomRandom
    String? seedSeed
  }
  command <<<
    randomGeneSample input xmfa backbone seq file sample genome number of genes \
      ~{outputOutputBasename} \
      ~{randomRandom} \
      ~{seedSeed}
  >>>
}