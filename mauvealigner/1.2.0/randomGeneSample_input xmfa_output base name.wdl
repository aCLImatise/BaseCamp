version 1.0

task RandomGeneSampleInput xmfaOutput base name {
  input {
    String? backboneBackboneSeqFile
    String? sampleSampleGenome
    String? numberNumberOfGenes
    String? outputOutputBasename
    String? randomRandom
    String? seedSeed
  }
  command <<<
    randomGeneSample input xmfa output base name \
      ~{backboneBackboneSeqFile} \
      ~{sampleSampleGenome} \
      ~{numberNumberOfGenes} \
      ~{outputOutputBasename} \
      ~{randomRandom} \
      ~{seedSeed}
  >>>
}