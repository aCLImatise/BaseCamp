version 1.0

task ExtractBCITreesRandom seedBCI thresholdMrBayes .trprobs input file 1 .. N {
  input {
    Int? maxMaxOutputTrees
    String? mrMrBayestrprobsinputfile1n
    String? nexusNexusOutputFile
  }
  command <<<
    extractBCITrees random seed BCI threshold MrBayes .trprobs input file 1 .. N \
      ~{maxMaxOutputTrees} \
      ~{mrMrBayestrprobsinputfile1n} \
      ~{nexusNexusOutputFile}
  >>>
}