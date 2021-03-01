version 1.0

task Monocle3DiffExp {
  input {
    Int? input_object_format
    String? output_table_format
    Boolean? introspective
    String? neighbor_graph
    String? reduction_method
    Int? knn
    String? method
    String? alternative
    Int? cores
    Boolean? verbose
    String input_object
    String output_table
  }
  command <<<
    monocle3 diffExp \
      ~{input_object} \
      ~{output_table} \
      ~{if defined(input_object_format) then ("--input-object-format " +  '"' + input_object_format + '"') else ""} \
      ~{if defined(output_table_format) then ("--output-table-format " +  '"' + output_table_format + '"') else ""} \
      ~{if (introspective) then "--introspective" else ""} \
      ~{if defined(neighbor_graph) then ("--neighbor-graph " +  '"' + neighbor_graph + '"') else ""} \
      ~{if defined(reduction_method) then ("--reduction-method " +  '"' + reduction_method + '"') else ""} \
      ~{if defined(knn) then ("--knn " +  '"' + knn + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(alternative) then ("--alternative " +  '"' + alternative + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object_format: "Format of input object. [Default: cds3]"
    output_table_format: "Format of output table, choose from {tsv, csv}. [Default: tsv]"
    introspective: "Print introspective information of the output table."
    neighbor_graph: "What neighbor graph to use, \\\"principal_graph\\\" recommended for trajectory analysis, choose from {principal_graph, knn}. [Default: knn]"
    reduction_method: "The dimensionality reduction to base the clustering on, choose from {UMAP}. [Default: UMAP]"
    knn: "Number of nearest neighbors used for building the kNN graph which is passed to knn2nb function during the Moran's I (Geary's C) test procedure."
    method: "A character string specifying the method for detecting significant genes showing correlated expression along the principal graph embedded in the low dimensional space, choose from {Moran_I}. [Default: Moran_I]"
    alternative: "A character string specifying the alternative hypothesis, choose from {greater, less, two.sided}. [Default: greater]"
    cores: "The number of cores to be used while testing each gene for differential expression. [Default: 1]"
    verbose: "Emit verbose output."
    input_object: ""
    output_table: ""
  }
  output {
    File out_stdout = stdout()
  }
}