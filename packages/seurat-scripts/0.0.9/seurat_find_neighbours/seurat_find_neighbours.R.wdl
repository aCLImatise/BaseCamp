version 1.0

task SeuratfindneighboursR {
  input {
    File? input_object_file
    String? input_format
    String? output_format
    Boolean? distance_matrix
    String? k_param
    Boolean? compute_snn
    Int? prune_snn
    String? nn_method
    File? output_object_file
    String? annoy_metric
    String? graph_name
    Float? nn_eps
    Boolean? verbose
    Boolean? force_recalc
    File? features
    String? reduction
    Int? dims
    String? assay
    Boolean? do_plot
  }
  command <<<
    seurat_find_neighbours_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if (distance_matrix) then "--distance-matrix" else ""} \
      ~{if defined(k_param) then ("--k-param " +  '"' + k_param + '"') else ""} \
      ~{if (compute_snn) then "--compute-snn" else ""} \
      ~{if defined(prune_snn) then ("--prune-snn " +  '"' + prune_snn + '"') else ""} \
      ~{if defined(nn_method) then ("--nn-method " +  '"' + nn_method + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""} \
      ~{if defined(annoy_metric) then ("--annoy-metric " +  '"' + annoy_metric + '"') else ""} \
      ~{if defined(graph_name) then ("--graph-name " +  '"' + graph_name + '"') else ""} \
      ~{if defined(nn_eps) then ("--nn-eps " +  '"' + nn_eps + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force_recalc) then "--force-recalc" else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(reduction) then ("--reduction " +  '"' + reduction + '"') else ""} \
      ~{if defined(dims) then ("--dims " +  '"' + dims + '"') else ""} \
      ~{if defined(assay) then ("--assay " +  '"' + assay + '"') else ""} \
      ~{if (do_plot) then "--do-plot" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seurat-scripts:0.0.9--0"
  }
  parameter_meta {
    input_object_file: "File name in which a serialized R matrix object may be found."
    input_format: "Either loom, seurat, anndata or singlecellexperiment for the input format to read."
    output_format: "Either loom, seurat, anndata or singlecellexperiment for the output format."
    distance_matrix: "Boolean value of whether the provided matrix is a distance matrix; note, for objects of class dist, this parameter will be set automatically."
    k_param: "Defines k for the k-nearest neighbor algorithm"
    compute_snn: "Also compute the shared nearest neighbor graph"
    prune_snn: "Sets the cutoff for acceptable Jaccard index when computing the neighborhood overlap for the SNN construction. Any edges with values less than or equal to this will be set to 0 and removed from the SNN graph. Essentially sets the strigency of pruning (0 --- no pruning, 1 --- prune everything)."
    nn_method: "Method for nearest neighbor finding. Options include: rann (default), annoy"
    output_object_file: "File name in which to store serialized R object of type 'Seurat'.'"
    annoy_metric: "Distance metric for annoy. Options include: euclidean (default), cosine, manhattan, and hamming"
    graph_name: "Name of graph to use for the clustering algorithm."
    nn_eps: "Error bound when performing nearest neighbor seach using RANN; default of 0.0 implies exact nearest neighbor search"
    verbose: "Maximal number of iterations per random start"
    force_recalc: "Force recalculation of SNN"
    features: "Comma-separated list of genes to use for building SNN. Alternatively, text file with one gene per line."
    reduction: "Reduction to use as input for building the SNN"
    dims: "Dimensions of reduction to use as input. A comma-separated list of the dimensions to use in construction of the SNN graph (e.g. To use the first 5 PCs, pass 1,2,3,4,5)."
    assay: "Assay to use in construction of SNN"
    do_plot: "Plot SNN graph on tSNE coordinates"
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
  }
}