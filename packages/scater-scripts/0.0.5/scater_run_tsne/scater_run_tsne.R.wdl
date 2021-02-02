version 1.0

task ScaterruntsneR {
  input {
    File? input_object_file
    Int? n_components
    Int? ntop
    File? feature_set
    Int? exprs_values
    String? scale_features
    Int? use_dim_red
    Int? n_dim_red
    String? perplexity
    String? pc_a
    Int? initial_dims
    File? output_object_file
  }
  command <<<
    scater_run_tsne_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(n_components) then ("--ncomponents " +  '"' + n_components + '"') else ""} \
      ~{if defined(ntop) then ("--ntop " +  '"' + ntop + '"') else ""} \
      ~{if defined(feature_set) then ("--feature-set " +  '"' + feature_set + '"') else ""} \
      ~{if defined(exprs_values) then ("--exprs-values " +  '"' + exprs_values + '"') else ""} \
      ~{if defined(scale_features) then ("--scale-features " +  '"' + scale_features + '"') else ""} \
      ~{if defined(use_dim_red) then ("--use-dimred " +  '"' + use_dim_red + '"') else ""} \
      ~{if defined(n_dim_red) then ("--n-dimred " +  '"' + n_dim_red + '"') else ""} \
      ~{if defined(perplexity) then ("--perplexity " +  '"' + perplexity + '"') else ""} \
      ~{if defined(pc_a) then ("--pca " +  '"' + pc_a + '"') else ""} \
      ~{if defined(initial_dims) then ("--initial-dims " +  '"' + initial_dims + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "singleCellExperiment object containing expression values and experimental information. Must have been appropriately prepared."
    n_components: "Numeric scalar indicating the number of principal components to obtain."
    ntop: "Numeric scalar specifying the number of most variable features to use for PCA."
    feature_set: "file (one cell per line) to be used to derive a character vector of row names, indicating a set of features to use for t-SNE. This will override any ntop argument if specified."
    exprs_values: "Integer scalar or string indicating which assay of object should be used to obtain the expression values for the calculations."
    scale_features: "Logical scalar, should the expression values be standardised so that each feature has unit variance?"
    use_dim_red: "String or integer scalar specifying the entry of reducedDims(object) to use as input to Rtsne. Default is to not use existing reduced dimension results."
    n_dim_red: "Integer scalar, number of dimensions of the reduced dimension slot to use when use_dimred is supplied. Defaults to all available dimensions."
    perplexity: "Numeric scalar defining the perplexity parameter, see ?Rtsne for more details."
    pc_a: "Logical scalar passed to Rtsne, indicating whether an initial PCA step should be performed. This is ignored if use_dimred is specified."
    initial_dims: "Integer scalar passed to Rtsne, specifying the number of principal components to be retained if pca=TRUE."
    output_object_file: "file name in which to store serialized R object of type 'SingleCellExperiment'."
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
  }
}