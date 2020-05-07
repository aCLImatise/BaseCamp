version 1.0

task ExtractBCITreesRandom seedMrBayes .trprobs input file 1 .. N {
  input {
    String? bciBciThreshold
    Int? maxMaxOutputTrees
    String? mrMrBayestrprobsinputfile1n
    String? nexusNexusOutputFile
  }
  command <<<
    extractBCITrees random seed MrBayes .trprobs input file 1 .. N \
      ~{bciBciThreshold} \
      ~{maxMaxOutputTrees} \
      ~{mrMrBayestrprobsinputfile1n} \
      ~{nexusNexusOutputFile}
  >>>
}