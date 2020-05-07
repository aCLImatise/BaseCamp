version 1.0

task ExtractBCITreesMrBayes .trprobs input file 1 .. N {
  input {
    String? randomRandomSeed
    String? bciBciThreshold
    Int? maxMaxOutputTrees
    String? mrMrBayestrprobsinputfile1n
    String? nexusNexusOutputFile
  }
  command <<<
    extractBCITrees MrBayes .trprobs input file 1 .. N \
      ~{randomRandomSeed} \
      ~{bciBciThreshold} \
      ~{maxMaxOutputTrees} \
      ~{mrMrBayestrprobsinputfile1n} \
      ~{nexusNexusOutputFile}
  >>>
}