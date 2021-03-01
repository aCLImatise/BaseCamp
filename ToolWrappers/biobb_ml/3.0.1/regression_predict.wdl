version 1.0

task RegressionPredict {
  input {
    File? config
    File? input_model_path
    File? output_results_path
  }
  command <<<
    regression_predict \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_model_path) then ("--input_model_path " +  '"' + input_model_path + '"') else ""} \
      ~{if defined(output_results_path) then ("--output_results_path " +  '"' + output_results_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "Configuration file"
    input_model_path: "Path to the input model. Accepted formats: pkl."
    output_results_path: "Path to the output results file. Accepted formats: csv.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_results_path = "${in_output_results_path}"
  }
}