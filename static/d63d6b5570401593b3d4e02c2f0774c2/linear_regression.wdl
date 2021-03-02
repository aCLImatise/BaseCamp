version 1.0

task LinearRegression {
  input {
    File? config
    File? output_test_table_path
    File? output_plot_path
    File? input_dataset_path
    File? output_model_path
  }
  command <<<
    linear_regression \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_test_table_path) then ("--output_test_table_path " +  '"' + output_test_table_path + '"') else ""} \
      ~{if defined(output_plot_path) then ("--output_plot_path " +  '"' + output_plot_path + '"') else ""} \
      ~{if defined(input_dataset_path) then ("--input_dataset_path " +  '"' + input_dataset_path + '"') else ""} \
      ~{if defined(output_model_path) then ("--output_model_path " +  '"' + output_model_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_ml:3.5.0--pyhafabc51_3"
  }
  parameter_meta {
    config: "Configuration file"
    output_test_table_path: "Path to the test table file. Accepted formats: csv."
    output_plot_path: "Residual plot checks the error between actual values and predicted values. Accepted formats: png."
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