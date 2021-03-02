version 1.0

task ScpredGetFeatureSpaceR {
  input {
    File? input_object
    String? prediction_column
    String? correction_method
    String? significance_threshold
    String? reduction_parameter
    File? output_path
  }
  command <<<
    scpred_get_feature_space_R \
      ~{if defined(input_object) then ("--input-object " +  '"' + input_object + '"') else ""} \
      ~{if defined(prediction_column) then ("--prediction-column " +  '"' + prediction_column + '"') else ""} \
      ~{if defined(correction_method) then ("--correction-method " +  '"' + correction_method + '"') else ""} \
      ~{if defined(significance_threshold) then ("--significance-threshold " +  '"' + significance_threshold + '"') else ""} \
      ~{if defined(reduction_parameter) then ("--reduction-parameter " +  '"' + reduction_parameter + '"') else ""} \
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scpred-cli:0.1.0--1"
  }
  parameter_meta {
    input_object: "Path to the input object of Seurat class in .rds format"
    prediction_column: "Name of the metadata column that contains cell labels"
    correction_method: "Multiple testing correction method. Default: fdr"
    significance_threshold: "Significance threshold for principal components explaining class identity"
    reduction_parameter: "Name of reduction in Seurat objet to be used to determine the feature space. Default: \\\"pca\\\""
    output_path: "Path for the modified scPred object in .rds format"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}