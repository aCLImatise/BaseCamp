version 1.0

task ExtractBCITreesRandom seedBCI thresholdMax output trees {
  input {
    String? mrMrBayestrprobsinputfile1n
    String? nexusNexusOutputFile
  }
  command <<<
    extractBCITrees random seed BCI threshold max output trees \
      ~{mrMrBayestrprobsinputfile1n} \
      ~{nexusNexusOutputFile}
  >>>
}