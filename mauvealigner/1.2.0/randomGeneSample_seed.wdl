version 1.0

task RandomGeneSampleSeed {
  input {
    String? inputInputXMfa
    String? backboneBackboneSeqFile
    String? sampleSampleGenome
    String? numberNumberOfGenes
    String? outputOutputBasename
    String? randomRandom
    String? seedSeed
  }
  command <<<
    randomGeneSample seed \
      ~{inputInputXMfa} \
      ~{backboneBackboneSeqFile} \
      ~{sampleSampleGenome} \
      ~{numberNumberOfGenes} \
      ~{outputOutputBasename} \
      ~{randomRandom} \
      ~{seedSeed}
  >>>
}