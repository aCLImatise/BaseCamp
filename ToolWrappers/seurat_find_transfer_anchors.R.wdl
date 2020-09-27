version 1.0

task SeuratfindtransferanchorsR {
  input {
    File? query_file
    String? query_format
    File? reference_file
    String? reference_format
    File? output_file
    String? normalization_method
    String? reference_assay
    String? query_assay
    String? reduction
    Boolean? project_query
    Boolean? l_two_norm
    String? features
    Int? npcs
    String? dims
    String? k_anchor
    String? k_filter
    String? k_score
    Int? max_features
    String? nn_method
    String? eps
    Boolean? approx_pc_a
    Boolean? verbose
  }
  command <<<
    seurat_find_transfer_anchors_R \
      ~{if defined(query_file) then ("--query-file " +  '"' + query_file + '"') else ""} \
      ~{if defined(query_format) then ("--query-format " +  '"' + query_format + '"') else ""} \
      ~{if defined(reference_file) then ("--reference-file " +  '"' + reference_file + '"') else ""} \
      ~{if defined(reference_format) then ("--reference-format " +  '"' + reference_format + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(normalization_method) then ("--normalization-method " +  '"' + normalization_method + '"') else ""} \
      ~{if defined(reference_assay) then ("--reference-assay " +  '"' + reference_assay + '"') else ""} \
      ~{if defined(query_assay) then ("--query-assay " +  '"' + query_assay + '"') else ""} \
      ~{if defined(reduction) then ("--reduction " +  '"' + reduction + '"') else ""} \
      ~{if (project_query) then "--project-query" else ""} \
      ~{if (l_two_norm) then "--l2-norm" else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(npcs) then ("--npcs " +  '"' + npcs + '"') else ""} \
      ~{if defined(dims) then ("--dims " +  '"' + dims + '"') else ""} \
      ~{if defined(k_anchor) then ("--k-anchor " +  '"' + k_anchor + '"') else ""} \
      ~{if defined(k_filter) then ("--k-filter " +  '"' + k_filter + '"') else ""} \
      ~{if defined(k_score) then ("--k-score " +  '"' + k_score + '"') else ""} \
      ~{if defined(max_features) then ("--max-features " +  '"' + max_features + '"') else ""} \
      ~{if defined(nn_method) then ("--nn-method " +  '"' + nn_method + '"') else ""} \
      ~{if defined(eps) then ("--eps " +  '"' + eps + '"') else ""} \
      ~{if (approx_pc_a) then "--approx-pca" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    query_file: "File containing seurat object to use as the query."
    query_format: "Either loom, seurat, anndata or singlecellexperiment for the output format."
    reference_file: "File containing seurat object to use as the reference."
    reference_format: "Either loom, seurat, anndata or singlecellexperiment for the output format."
    output_file: "File name in which to store serialized R matrix object."
    normalization_method: "Name of normalization method used: LogNormalize or SCT."
    reference_assay: "Assay to use from reference."
    query_assay: "Assay to use from query."
    reduction: "Dimensional reduction to perform when finding anchors."
    project_query: "Project the PCA from the query dataset onto the reference. Use only in rare cases."
    l_two_norm: "Execute a l2 normalization on the query."
    features: "Features to use for dimensional reductionFeatures to use for dimensional reduction."
    npcs: "Number of PCs to compute on reference. If null, then use an existing PCA structure in the reference object."
    dims: "Which dimensions to use from the reduction to specify the neighbor search space."
    k_anchor: "How many neighbors (k) to use when picking anchors."
    k_filter: "How many neighbors (k) to use when filtering anchors."
    k_score: "How many neighbors (k) to use when scoring anchors."
    max_features: "The maximum number of features to use when specifying the neighborhood search space in the anchor filtering."
    nn_method: "Method for nearest neighbor finding. Options include: rann, annoy."
    eps: "Error bound on the neighbor finding algorithm (from RANN)."
    approx_pc_a: "Use truncated singular value decomposition to approximate PCA."
    verbose: "Print progress bars and output."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}