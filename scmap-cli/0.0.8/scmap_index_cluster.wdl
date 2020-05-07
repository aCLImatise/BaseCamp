version 1.0

task ScmapIndexCluster.R {
  input {
    String inputInputObjectFile
    String clusterClusterCol
    String trainTrainId
    String outputOutputPlotFile
    String outputOutputObjectFile
  }
  command <<<
    scmap-index-cluster.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(clusterClusterCol) then ("--cluster-col " +  '"' + clusterClusterCol + '"') else ""} \
      ~{if defined(trainTrainId) then ("--train-id " +  '"' + trainTrainId + '"') else ""} \
      ~{if defined(outputOutputPlotFile) then ("--output-plot-file " +  '"' + outputOutputPlotFile + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}