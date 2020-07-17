version 1.0

task IgraphExtractClusters.R {
  input {
    String? input_i_graph_object
    String? input_sce_object
    String? output_sce_object
  }
  command <<<
    igraph_extract_clusters.R \
      ~{if defined(input_i_graph_object) then ("--input-igraph-object " +  '"' + input_i_graph_object + '"') else ""} \
      ~{if defined(input_sce_object) then ("--input-sce-object " +  '"' + input_sce_object + '"') else ""} \
      ~{if defined(output_sce_object) then ("--output-sce-object " +  '"' + output_sce_object + '"') else ""}
  >>>
  parameter_meta {
    input_i_graph_object: "Path to the input igraph object in rds format."
    input_sce_object: "Path to the input SCE object where to add the cluster annotation extracted from the igraph objecti."
    output_sce_object: "Path to the output SCE object in rds format with cluster annotation in $cluster."
  }
}