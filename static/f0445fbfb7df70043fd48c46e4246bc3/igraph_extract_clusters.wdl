version 1.0

task IgraphExtractClusters.R {
  input {
    String inputInputIGraphObject
    String inputInputSceObject
    String outputOutputSceObject
  }
  command <<<
    igraph_extract_clusters.R \
      ~{if defined(inputInputIGraphObject) then ("--input-igraph-object " +  '"' + inputInputIGraphObject + '"') else ""} \
      ~{if defined(inputInputSceObject) then ("--input-sce-object " +  '"' + inputInputSceObject + '"') else ""} \
      ~{if defined(outputOutputSceObject) then ("--output-sce-object " +  '"' + outputOutputSceObject + '"') else ""}
  >>>
}