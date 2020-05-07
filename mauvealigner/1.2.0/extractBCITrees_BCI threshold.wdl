version 1.0

task ExtractBCITreesBCI threshold {
  input {
    String? randomRandomSeed
    String? bciBciThreshold
    Int? maxMaxOutputTrees
    String? mrMrBayestrprobsinputfile1n
    String? nexusNexusOutputFile
  }
  command <<<
    extractBCITrees BCI threshold \
      ~{randomRandomSeed} \
      ~{bciBciThreshold} \
      ~{maxMaxOutputTrees} \
      ~{mrMrBayestrprobsinputfile1n} \
      ~{nexusNexusOutputFile}
  >>>
}