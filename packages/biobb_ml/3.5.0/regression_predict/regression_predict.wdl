version 1.0

task RegressionPredict {
  input {
    File? config
    File? input_dataset_path
    File? input_model_path
    File? output_results_path
  }
  command <<<
    regression_predict \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_dataset_path) then ("--input_dataset_path " +  '"' + input_dataset_path + '"') else ""} \
      ~{if defined(input_model_path) then ("--input_model_path " +  '"' + input_model_path + '"') else ""} \
      ~{if defined(output_results_path) then ("--output_results_path " +  '"' + output_results_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_ml:3.5.0--pyhafabc51_3"
  }
  parameter_meta {
    config: "Configuration file"
    input_dataset_path: "Path to the dataset to predict. Accepted formats: csv."
    input_model_path: "Path to the input model. Accepted formats: pkl."
    output_results_path: "Path to the output results file. Accepted formats: csv.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_results_path = "${in_output_results_path}"
  }
}