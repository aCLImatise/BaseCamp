version 1.0

task ScaterrunpcaR {
  input {
    File? input_object_file
    Int? n_components
    String? method
    Int? ntop
    Int? exprs_values
    File? feature_set
    Float? scale_features
    String? use_cold_at_a
    String? selected_variables
    String? detect_outliers
    File? output_object_file
  }
  command <<<
    scater_run_pca_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(n_components) then ("--ncomponents " +  '"' + n_components + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(ntop) then ("--ntop " +  '"' + ntop + '"') else ""} \
      ~{if defined(exprs_values) then ("--exprs-values " +  '"' + exprs_values + '"') else ""} \
      ~{if defined(feature_set) then ("--feature-set " +  '"' + feature_set + '"') else ""} \
      ~{if defined(scale_features) then ("--scale-features " +  '"' + scale_features + '"') else ""} \
      ~{if defined(use_cold_at_a) then ("--use-coldata " +  '"' + use_cold_at_a + '"') else ""} \
      ~{if defined(selected_variables) then ("--selected-variables " +  '"' + selected_variables + '"') else ""} \
      ~{if defined(detect_outliers) then ("--detect-outliers " +  '"' + detect_outliers + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object_file: "singleCellExperiment object containing expression values and experimental information. Must have been appropriately prepared."
    n_components: "Numeric scalar indicating the number of principal components to obtain."
    method: "String specifying how the PCA should be performed. (default: prcomp)"
    ntop: "Numeric scalar specifying the number of most variable features to use for PCA."
    exprs_values: "Integer scalar or string indicating which assay of object should be used to obtain the expression values for the calculations."
    feature_set: "file (one cell per line) to be used to derive a character vector of row names indicating a set of features to use for PCA. This will override any ntop argument if specified."
    scale_features: "Logical scalar, should the expression values be standardised so that each feature has unit variance? This will also remove features with standard deviations below 1e-8."
    use_cold_at_a: "Logical scalar specifying whether the column data should be used instead of expression values to perform PCA."
    selected_variables: "Comma-separated list of strings indicating which variables in colData(object) to use for PCA when use_coldata=TRUE."
    detect_outliers: "Logical scalar, should outliers be detected based on PCA coordinates generated from column-level metadata?"
    output_object_file: "file name in which to store serialized R object of type 'SingleCellExperiment'."
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
  }
}