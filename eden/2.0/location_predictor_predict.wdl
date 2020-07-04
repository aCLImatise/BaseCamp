version 1.0

task LocationPredictorPredict {
  input {
    String? input_file
    String? model_file
    String? gene_domain_score_file_name
    String? output_dir
  }
  command <<<
    location_predictor predict \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(model_file) then ("--model-file " +  '"' + model_file + '"') else ""} \
      ~{if defined(gene_domain_score_file_name) then ("--gene-domain-score-file-name " +  '"' + gene_domain_score_file_name + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Path to file containing input. (default: None)"
    model_file: "Path to a fit model file. (default: model)"
    gene_domain_score_file_name: "... (default: gene_domain_score)"
    output_dir: "Path to output directory. (default: out)"
  }
}