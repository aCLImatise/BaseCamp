version 1.0

task ScmapIndexCell.R {
  input {
    String inputInputObjectFile
    String numberNumberChunks
    String numberNumberClusters
    String trainTrainId
    String randomRandomSeed
    String outputOutputObjectFile
  }
  command <<<
    scmap-index-cell.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(numberNumberChunks) then ("--number-chunks " +  '"' + numberNumberChunks + '"') else ""} \
      ~{if defined(numberNumberClusters) then ("--number-clusters " +  '"' + numberNumberClusters + '"') else ""} \
      ~{if defined(trainTrainId) then ("--train-id " +  '"' + trainTrainId + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}