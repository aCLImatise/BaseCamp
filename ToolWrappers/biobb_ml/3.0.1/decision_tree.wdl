version 1.0

task DecisionTree {
  input {
    File? config
    File? output_test_table_path
    File? output_plot_path
    File? input_dataset_path
    File? output_model_path
  }
  command <<<
    decision_tree \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_test_table_path) then ("--output_test_table_path " +  '"' + output_test_table_path + '"') else ""} \
      ~{if defined(output_plot_path) then ("--output_plot_path " +  '"' + output_plot_path + '"') else ""} \
      ~{if defined(input_dataset_path) then ("--input_dataset_path " +  '"' + input_dataset_path + '"') else ""} \
      ~{if defined(output_model_path) then ("--output_model_path " +  '"' + output_model_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "Configuration file"
    output_test_table_path: "Path to the test table file. Accepted formats: csv."
    output_plot_path: "Path to the statistics plot. If target is binary it shows confusion matrix, distributions of the predicted probabilities of both classes and ROC curve. If target is non-binary it shows confusion matrix. Accepted formats: png."
    input_dataset_path: "Path to the input dataset. Accepted formats: csv."
    output_model_path: "Path to the output model file. Accepted formats: pkl.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_test_table_path = "${in_output_test_table_path}"
    File out_output_plot_path = "${in_output_plot_path}"
    File out_output_model_path = "${in_output_model_path}"
  }
}