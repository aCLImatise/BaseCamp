version 1.0

task ExtractBCITreesRandom seedMax output trees {
  input {
    String? bciBciThreshold
    Int? maxMaxOutputTrees
    String? mrMrBayestrprobsinputfile1n
    String? nexusNexusOutputFile
  }
  command <<<
    extractBCITrees random seed max output trees \
      ~{bciBciThreshold} \
      ~{maxMaxOutputTrees} \
      ~{mrMrBayestrprobsinputfile1n} \
      ~{nexusNexusOutputFile}
  >>>
}