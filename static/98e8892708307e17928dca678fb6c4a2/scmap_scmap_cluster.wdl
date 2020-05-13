version 1.0

task ScmapScmapCluster.R {
  input {
    String indexIndexObjectFile
    String projectionProjectionObjectFile
    String thresholdThreshold
    String outputOutputTextFile
    String outputOutputObjectFile
  }
  command <<<
    scmap-scmap-cluster.R \
      ~{if defined(indexIndexObjectFile) then ("--index-object-file " +  '"' + indexIndexObjectFile + '"') else ""} \
      ~{if defined(projectionProjectionObjectFile) then ("--projection-object-file " +  '"' + projectionProjectionObjectFile + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(outputOutputTextFile) then ("--output-text-file " +  '"' + outputOutputTextFile + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}