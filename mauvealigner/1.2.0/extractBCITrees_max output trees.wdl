version 1.0

task ExtractBCITreesMax output trees {
  input {
    String? randomRandomSeed
    String? bciBciThreshold
    Int? maxMaxOutputTrees
    String? mrMrBayestrprobsinputfile1n
    String? nexusNexusOutputFile
  }
  command <<<
    extractBCITrees max output trees \
      ~{randomRandomSeed} \
      ~{bciBciThreshold} \
      ~{maxMaxOutputTrees} \
      ~{mrMrBayestrprobsinputfile1n} \
      ~{nexusNexusOutputFile}
  >>>
}