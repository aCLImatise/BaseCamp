version 1.0

task RandomGeneSampleInput xmfaNumber of genes {
  input {
    String? backboneBackboneSeqFile
    String? sampleSampleGenome
    String? numberNumberOfGenes
    String? outputOutputBasename
    String? randomRandom
    String? seedSeed
  }
  command <<<
    randomGeneSample input xmfa number of genes \
      ~{backboneBackboneSeqFile} \
      ~{sampleSampleGenome} \
      ~{numberNumberOfGenes} \
      ~{outputOutputBasename} \
      ~{randomRandom} \
      ~{seedSeed}
  >>>
}