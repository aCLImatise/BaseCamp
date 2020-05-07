version 1.0

task RandomGeneSampleOutput base name {
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
    randomGeneSample output base name \
      ~{inputInputXMfa} \
      ~{backboneBackboneSeqFile} \
      ~{sampleSampleGenome} \
      ~{numberNumberOfGenes} \
      ~{outputOutputBasename} \
      ~{randomRandom} \
      ~{seedSeed}
  >>>
}