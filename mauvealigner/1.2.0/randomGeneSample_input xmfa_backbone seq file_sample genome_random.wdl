version 1.0

task RandomGeneSampleInput xmfaBackbone seq fileSample genomeRandom {
  input {
    String? numberNumberOfGenes
    String? outputOutputBasename
    String? randomRandom
    String? seedSeed
  }
  command <<<
    randomGeneSample input xmfa backbone seq file sample genome random \
      ~{numberNumberOfGenes} \
      ~{outputOutputBasename} \
      ~{randomRandom} \
      ~{seedSeed}
  >>>
}