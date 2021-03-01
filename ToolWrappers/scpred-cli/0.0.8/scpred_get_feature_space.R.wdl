version 1.0

task ScpredGetFeatureSpaceR {
  input {
    File? input_object
    String? prediction_column
    String? explained_var_limit
    String? correction_method
    String? significance_threshold
    File? output_path
    File? eigenvalue_plot_path
  }
  command <<<
    scpred_get_feature_space_R \
      ~{if defined(input_object) then ("--input-object " +  '"' + input_object + '"') else ""} \
      ~{if defined(prediction_column) then ("--prediction-column " +  '"' + prediction_column + '"') else ""} \
      ~{if defined(explained_var_limit) then ("--explained-var-limit " +  '"' + explained_var_limit + '"') else ""} \
      ~{if defined(correction_method) then ("--correction-method " +  '"' + correction_method + '"') else ""} \
      ~{if defined(significance_threshold) then ("--significance-threshold " +  '"' + significance_threshold + '"') else ""} \
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""} \
      ~{if defined(eigenvalue_plot_path) then ("--eigenvalue-plot-path " +  '"' + eigenvalue_plot_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object: "Path to the input object of scPred or seurat class in .rds format"
    prediction_column: "Name of the metadata column that contains training labels"
    explained_var_limit: "Threshold to filter principal components based on variance explained"
    correction_method: "Multiple testing correction method. Default: fdr"
    significance_threshold: "Significance threshold for principal components explaining class identity"
    output_path: "Path for the modified scPred object in .rds format"
    eigenvalue_plot_path: "Path for eigenvalue plot for principal components in .png format"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}