version 1.0

task Monocle3Partition {
  input {
    Int? input_object_format
    Int? output_object_format
    Boolean? introspective
    String? reduction_method
    Int? knn
    Boolean? weight
    Int? louvain_iter
    Float? resolution
    Float? partition_q_val
    Boolean? verbose
    String input_object
    String output_object
  }
  command <<<
    monocle3 partition \
      ~{input_object} \
      ~{output_object} \
      ~{if defined(input_object_format) then ("--input-object-format " +  '"' + input_object_format + '"') else ""} \
      ~{if defined(output_object_format) then ("--output-object-format " +  '"' + output_object_format + '"') else ""} \
      ~{if (introspective) then "--introspective" else ""} \
      ~{if defined(reduction_method) then ("--reduction-method " +  '"' + reduction_method + '"') else ""} \
      ~{if defined(knn) then ("--knn " +  '"' + knn + '"') else ""} \
      ~{if (weight) then "--weight" else ""} \
      ~{if defined(louvain_iter) then ("--louvain-iter " +  '"' + louvain_iter + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(partition_q_val) then ("--partition-qval " +  '"' + partition_q_val + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_object_format: "Format of input object. [Default: cds3]"
    output_object_format: "Format of output object. [Default: cds3]"
    introspective: "Print introspective information of the output object."
    reduction_method: "The dimensionality reduction to base the clustering on, choose from {UMAP, tSNE, PCA, LSI}. [Default: UMAP]"
    knn: "Number of nearest neighbours used for Louvain clustering. [Default: 20]"
    weight: "When this option is set, calculate the weight for each edge in the kNN graph."
    louvain_iter: "The number of iteration for Louvain clustering. [Default: 1]"
    resolution: "Resolution of clustering result, specifying the granularity of clusters. Not used by default and the standard igraph louvain clustering algorithm will be used."
    partition_q_val: "The q-value threshold used to determine the partition of cells. [Default: 0.05]"
    verbose: "Emit verbose output."
    input_object: ""
    output_object: ""
  }
  output {
    File out_stdout = stdout()
  }
}