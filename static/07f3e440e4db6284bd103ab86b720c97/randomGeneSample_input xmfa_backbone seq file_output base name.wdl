version 1.0

task RandomGeneSampleInput xmfaBackbone seq fileOutput base name {
  input {
    String? sampleSampleGenome
    String? numberNumberOfGenes
    String? outputOutputBasename
    String? randomRandom
    String? seedSeed
  }
  command <<<
    randomGeneSample input xmfa backbone seq file output base name \
      ~{sampleSampleGenome} \
      ~{numberNumberOfGenes} \
      ~{outputOutputBasename} \
      ~{randomRandom} \
      ~{seedSeed}
  >>>
}