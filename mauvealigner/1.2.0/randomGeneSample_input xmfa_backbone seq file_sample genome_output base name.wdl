version 1.0

task RandomGeneSampleInput xmfaBackbone seq fileSample genomeOutput base name {
  input {
    String? numberNumberOfGenes
    String? outputOutputBasename
    String? randomRandom
    String? seedSeed
  }
  command <<<
    randomGeneSample input xmfa backbone seq file sample genome output base name \
      ~{numberNumberOfGenes} \
      ~{outputOutputBasename} \
      ~{randomRandom} \
      ~{seedSeed}
  >>>
}