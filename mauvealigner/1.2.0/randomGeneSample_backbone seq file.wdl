version 1.0

task RandomGeneSampleBackbone seq file {
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
    randomGeneSample backbone seq file \
      ~{inputInputXMfa} \
      ~{backboneBackboneSeqFile} \
      ~{sampleSampleGenome} \
      ~{numberNumberOfGenes} \
      ~{outputOutputBasename} \
      ~{randomRandom} \
      ~{seedSeed}
  >>>
}